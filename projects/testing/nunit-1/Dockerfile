FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /app
COPY src/*.csproj ./
RUN dotnet restore
COPY src/* ./
RUN dotnet publish -c Release -o out 


# Stage 2: Create the runtime image
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS runtime
WORKDIR /app
COPY --from=build /app/out ./ 
RUN groupadd -r dotnet && useradd -r -g dotnet dotnet
USER dotnet
EXPOSE 8080
ENTRYPOINT ["dotnet", "Src.dll"]

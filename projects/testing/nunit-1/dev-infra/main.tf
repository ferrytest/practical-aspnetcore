module "ecs_cluster_fargate_autoscaling_1" {
  source = "./terraform-ecs-fargate-module"

  aws_ecs_cluster_name = "my-ecs-cluster_1"
  aws_ecs_service_name = "my-ecs-service_1"
  container_name = "ferry-app-1"
  load-balancer-name = "alb-1"
}

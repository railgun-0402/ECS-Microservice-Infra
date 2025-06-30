locals {
  # 「-」の慣例
  name   = replace(basename(path.cwd), "_", "-")
  region = "ap-northeast-1"
  app    = "ecs-microservice"
}
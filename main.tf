provider "aws"{
  region = "us-east-2"
}
module "A" {
  source = "git::https://github.com/Ramana4u/test1.git?ref=slave"
}
  module "B" {
    source = "git::https://github.com/Ramana4u/test1.git?ref=master"
    security_groups = var.security_groups
      target_group_arns = [module.A.TG_ARN]
 }
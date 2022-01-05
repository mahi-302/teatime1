provider "aws"{
  region = "us-east-2"
}
module "A" {
  source = "git::https://github.com/Gunamoni11/demo.git?ref=slave"
}
  module "B" {
    source = "git::https://github.com/Gunamoni11/demo.git?ref=master"
    security_groups = var.security_groups
      target_group_arns = [module.A.TG_ARN]
 }

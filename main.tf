provider "aws"{
  region = "us-east-2"
}
module "a" {
  source = "git::https://github.com/Gunamoni11/demo.git?ref=slave"
}
  module "b" {
    source = "git::https://github.com/Gunamoni11/demo.git?ref=master"
    target_group_arns = module.a.TG_ARN
 }

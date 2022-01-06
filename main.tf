provider "aws"{
  region = "us-east-2"
}
module "slave" {
  source = "git::https://github.com/Gunamoni11/demo.git?ref=slave"
}
  module "master" {
    source = "git::https://github.com/Gunamoni11/demo.git?ref=master"
    target_group_arn = module.slave.TG_ARN
 }

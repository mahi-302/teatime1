provider "aws"{
  region = "us-east-2"
}
module "a" {
  source = "git::https://github.com/mahi-302/teatime1.git?ref=slave"
}
  module "b" {
    source = "git::https://github.com/mahi-302/teatime1.git?ref=master"
    target_group_arns = module.a.TG_ARN
 }

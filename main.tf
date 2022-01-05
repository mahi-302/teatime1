provider "aws"{
  region = "us-east-2"
}
module "slave" {
  source = "git::https://github.com/Gunamoni11/demo.git?ref=slave"
}
  module "master" {
    source = "git::https://github.com/Gunamoni11/demo.git?ref=master"
    security_groups = var.security_groups
  
 }

resource "aws_launch_configuration" "as_config" {
  name_prefix   = var.name_prefix
  image_id      = var.image_id
  instance_type = var.instance_type
  security_groups    = ["sg-03723ff32a5606bda"]
  user_data = "${file("userdata.sh")}"
}
resource "aws_autoscaling_group" "bar" {
  name                 = var.name 
  depends_on           = ["aws_launch_configuration.as_config"]
  launch_configuration = aws_launch_configuration.as_config.name
  min_size             = 1
  max_size             = 2
  desired_capacity     = 1
  target_group_arns = [var.target_group_arns]
 availability_zones = var.availability_zones
}

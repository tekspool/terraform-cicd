module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "single-instance"
  instance_type = "t3.micro"
  key_name      = "New_Key_pair"
  monitoring    = true
  subnet_id     = "subnet-07a26bbb315c3bf31"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
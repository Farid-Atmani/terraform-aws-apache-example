Terraform Module to provision an EC2 Instance that is running Apache.

Not intended for production use. Just to show how to create a public module.

```hcl
provider "aws" {
  region = "us-east-1"
}

module "apache" {
  source        = ".//terraform-aws-module-apache-example"
  vpc_id        = "vpc-0d3"
  my_ip         = "MY_OWN_IP_ADDRESS/32"
  public_key    = "ssh-rsa AAAABXXXXX"
  instance_type = "t2.micro"
  server_name   = "Apache Example Server"
}

output "public_ip" {
  value = module.apache.public_ip
}

```
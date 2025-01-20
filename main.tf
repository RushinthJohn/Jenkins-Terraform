terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.52.0"
    }
  }
}

terraform {
  required_version = ">=0.13"
}


provider "aws" {
  region     = "us-east-1"
}

resource "aws_instance" "myec2" {
   ami = "ami-09988af04120b3591"
   instance_type = "t2.micro"
   key_name = "jenkins-master"
   vpc_security_group_ids = ["sg-0ba7e7ed09f28cb8c"]
   subnet_id = "subnet-0313799b1d8f26c37"
   tags = {
      Name = "Example"
   }

}

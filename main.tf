provider "aws" {
    region = "us-east-2"
  
}
resource "aws_vpc" "myvpc" {
    cidr_block = "10.0.0.0/16"

    tags = {
        Name = "class30"
        Teams = "DevOps"
        Environment = "dev"
        Division = "HR"
    }  
}
terraform {
    required_version = "~> 1.0"
    required_providers {
        aws = {
            source = "hashicorp/aws"
            versioversion = "~> 3.0"  #optional but recommended in productions
                    
      
    }
}
backend "s3" {
    bucket = "myclass30bucket"
    key = "prod/terraform.tfstate"
    region = "us-east-2"
  
}
}
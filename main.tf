
provider "aws" {
    region = "us-east-1"  
}

resource "aws_instance" "Project2vm" {
    ami           = var.ami_value
    instance_type = var.instance_type
    subnet_id = var.subnet_id

    tags = {
        Name = "Project2vm"
        Createdby = "Terraform"
        created_on = formatdate("YYYY-MM-DD", timestamp())
          }
  
}
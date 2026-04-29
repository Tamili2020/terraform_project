provider "aws" {
  region = "us-east-1"
}
resource "aws_vpc" "main" {
    cidr_block = "10.0.0.0/24"
    tags = {
        Name = "main_vpc_test"
        created_on = timestamp()
        created_by = "terraform_user_muthu"
    }
}
    resource "aws_subnet" "main_subnet" {
        vpc_id            = aws_vpc.main.id
        cidr_block        = "10.0.0.0/27"
        availability_zone = "us-east-1a"
        tags = {
            Name = "main_subnet1"
            created_on = timestamp()
            created_by = "terraform-user_muthu"
        }
    
  
}

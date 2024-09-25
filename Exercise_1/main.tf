# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
  region     = "us-east-1"
  access_key = "your_access_key"
  secret_key = "your_secret_key"
  token      = "your_token"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "udacity_t2" {
  count         = 4
  ami           = "ami-0ebfd941bbafe70c6"
  instance_type = "t2.micro"
  subnet_id     = "subnet-04460bad013e84fc6"
  tags = {
    Name = "Udacity T2"
  }
}

# TODO: provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "udacity_m4" {
  count         = 2
  ami           = "ami-0ebfd941bbafe70c6"
  instance_type = "m4.large"
  subnet_id     = "subnet-04460bad013e84fc6"
  tags = {
    Name = "Udacity M4"
  }
}
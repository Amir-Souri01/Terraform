resource "aws_instance" "terEC2" {
  ami           = var.ami_id
  instance_type = "t2.micro"
  subnet_id     = "subnet-0de8f480df716b666"

  tags = {
    Name      = "terraform-test"
    Createdby = "Terraform"
  }
}


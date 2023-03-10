resource "aws_instance" "terEC2" {
  ami           = "ami-005f9685cb30f234b"
  instance_type = "t2.micro"
  
  tags = {
    Createdby = "Terraform"
  }
}


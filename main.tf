resource "aws_instance" "terEC2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id

  tags = {
    Name      = var.machine_name
    Createdby = "Terraform"
  }
}


# creating ec2 VM
resource "aws_instance" "amit-devops" {
  #ami           = "ami-0a25a306450a2cba3"
  ami           = var.amit-ami-id
  instance_type = var.vm-size
  key_name      = aws_key_pair.example.key_name
  tags = {
    "Name" = var.vm-name
  }
}



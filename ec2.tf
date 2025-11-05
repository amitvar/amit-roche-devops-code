# creating ec2 VM
resource "aws_instance" "amit-devops" {
  ami           = "ami-0a25a306450a2cba3"
  instance_type = "t2.nano"
  key_name      = "roche-key"
  tags = {
    "Name" = "amit-vm-1"
  }
}


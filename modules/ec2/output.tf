# public ip of my ec2 vm
output "my-ec2-publicIP" {
  value = aws_instance.amit-devops.public_ip

}

# ec2 machine instance id
output "my-ec2ID" {
  value = aws_instance.amit-devops.id

}
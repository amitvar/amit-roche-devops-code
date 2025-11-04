resource "local_file" "amit_local" {
  filename = "myip.txt"
  content  = aws_instance.amit-devops.public_ip

}
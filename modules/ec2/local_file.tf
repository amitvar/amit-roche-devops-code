# storing data in local file
resource "local_file" "amit_local" {
  filename = "myip.txt"
  content  = aws_instance.amit-devops.public_ip
  #making manual dependency
  depends_on = [aws_instance.amit-devops]
}
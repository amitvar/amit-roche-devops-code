# storing data in local file
resource "local_file" "amit_local" {
  filename = "${path.module}/ansible-inventory.txt"
  content  = join("\n",aws_instance.amit-devops[*].public_ip)
  #making manual dependency
  depends_on = [aws_instance.amit-devops]
}
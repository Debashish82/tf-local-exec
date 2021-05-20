resource "aws_instance" "my-ec2" {
  ami = "ami-081bb417559035fe8"
  instance_type = "t2.micro"

  provisioner "local-exec" {
    command = "echo ${aws_instance.my-ec2.private_ip} >> private_ips.txt"
  }
}
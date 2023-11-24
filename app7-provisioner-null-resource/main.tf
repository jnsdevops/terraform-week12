resource "aws_iam_group" "group1" {
  name = "DevOps"
}
resource "aws_instance" "terra-lab" {
  ami       = data.aws_ami.ami1.id
  key_name  = aws_key_pair.ec2_key.key_name
  instance_type = "t2.micro"
  #user_data = file("jenkins.sh")

  depends_on = [aws_key_pair.ec2_key, aws_iam_group.group1, local_file.ssh_key]

}

resource "null_resource" "null" {
  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("week12.pem")
    host        = aws_instance.terra-lab.public_dns
  }

  provisioner "local-exec" {
    command = "echo hello"
  }
  
  provisioner "remote-exec" {
    inline = [
      "sudo yum update -y",
      "mkdir jano",
      "pwd",
      "nproc"
    ]
  }

  provisioner "file" {
    source      = "week12.pem"
    destination = "/tmp/w.pem"
  }
depends_on = [ aws_instance.terra-lab ]

}
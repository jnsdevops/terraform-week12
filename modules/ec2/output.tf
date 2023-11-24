output "public-ip" {
  value = aws_instance.demo.public_ip
}
output "public-dns" {
  value = aws_instance.demo.public_dns
}
output "instance-id" {
 value = aws_instance.demo.id
}
output "ami-instance" {
  value = aws_instance.demo.ami
}
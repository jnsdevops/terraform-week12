output "public-ip" {
  value = aws_instance.terra-lab.public_ip
}
output "ami" {
  value = data.aws_ami.ami1.id
}
output "dns" {
  value = aws_key_pair.ec2_key.key_pair_id
}
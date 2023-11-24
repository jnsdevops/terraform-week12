module "ec2-server" {
  source        = "../modules/ec2"
  ami           = "ami-05c13eab67c5d8861"
  region        = "us-east-1"
  instance_type = "t3.small"
  Name          = "DEV-from module"
}
output "public-ip" {
  value = module.ec2-server.public-ip
}
output "public-dns" {
  value = module.ec2-server.public-dns
}
output "intance-ami" {
  value = module.ec2-server.ami-instance
}
output "instance-id" {
  value = module.ec2-server.instance-id
}
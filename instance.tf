provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "ubuntu" {
  ami           = "ami-068663a3c619dd892" //ubuntu 20.04 Server ( AMi tb deveria ser uma variavel?)
  instance_type = "t2.micro"
  associate_public_ip_address = "true" 
  provisioner "local-exec" {
    command = "echo ${aws_instance.ubuntu.public_ip} > public-ip.txt"
  }
  security_groups = ["sg"] //attacha o Security group na instancia
  user_data = "${file("userdata.sh")}" //esecuta o script de instal. apache

  //adiciona tags na instancia
  tags = {
    Name = "Teste Terraform"
    Projeto = " Teste DevOps"
  }
}


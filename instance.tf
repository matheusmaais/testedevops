resource "aws_instance" "ubuntu" {
  ami           = var.ami 
  instance_type = var.instance_type
  key_name = "terraform"
  provisioner "local-exec" {
    command = "echo ${aws_instance.ubuntu.public_ip} > public-ip.txt"
  }
  security_groups = ["sg"] //attacha o Security group na instancia
  user_data = file("userdata.sh") //executa o script de instal. apache

  //adiciona tags na instancia
  tags = {
    Name = "${var.tag}"
   # Projeto = "${var.tag.Projeto}"
  }
}


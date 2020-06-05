variable "region" {
    default = "us-east-1"
}

#Variaveis de security grou
variable "http_port" {
    default = 80
}
variable "ssh_port" {
    default = 22
}
#variavel do MEU IP
variable "my_system" { 
    default = "187.45.102.195/32"
}
#variavel AMI e tipo da instancia
variable "ami" {
    default = "ami-068663a3c619dd892"
}
variable "instance_type" {
    default = "t2.micro"
}
variable "tag"{
    default = "Teste Terraform"
    #Projeto = "Terraform"
}


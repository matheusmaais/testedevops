Cria uma instancia ec2 t2.micro
Associa um ip publico
Grava ip publico em txt
Cria e associa um security group com acesso a porta 80
Instala apache


INSTRUÇOES DE USO:

Requisitos:

Criar usuario programatico no IAM da AWS com acesso de administrador.
Anotar Acess Key e Secret Key

Instalar AWS CLI
https://docs.aws.amazon.com/pt_br/cli/latest/userguide/install-cliv2.html

$aws configure
digitar as credenciais.

Instalar Terraform
https://www.terraform.io/downloads.html

$git clone https://github.com/matheusmaais/testedevops.git

cd testedevops
terraform init
terraform plan
terraform apply

apos a criacao do stack, O terraform gerara um arquivo chamado public-ip.txt, que tera como conteudo o IP da instancia criada
Colar o ip informado no navegador (processo de instalaçao do apache demora cerca de 2min apos a criaçao da instancia)






provider "aws" {
  region = var.region
}
data "aws_ami" "ubuntu" { //data goes and fetch the  recent ami version
  most_recent = true
  filter { //its a filter block for searching 
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
  }
  owners = ["099720109477"] # Canonical //fetchs only official images
}

resource "aws_instance" "app_server" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.server_type

  tags = {
    Name = var.server_name
  }


}
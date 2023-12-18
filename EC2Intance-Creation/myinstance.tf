provider "aws" {
  profile = "new1"
  region  = "us-east-1"
}

resource "aws_instance" "intro" {
  ami                    = "ami-0fc5d935ebf8bc3bc"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-1a"
  key_name               = "saru-demo-keypair-2"
  vpc_security_group_ids = ["sg-048b3f527ee6782f0"]
  tags = {
    "Name" : "saru-instance-6"
    "Another" : "TF"

  }
}

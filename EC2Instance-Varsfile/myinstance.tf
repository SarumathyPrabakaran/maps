resource "aws_instance" "second" {
    instance_type = "t2.micro"
    ami = var.AMIS[var.REGION]
    key_name = "saru-demo-keypair-mumbai"
    vpc_security_group_ids = ["sg-02e41e51f01874538"]
    tags = {
        "Name" = "my-instance-6"
    }
}
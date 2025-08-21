# resource <resource-type> <resource-name>
resource "aws_instance" "db" {

    ami = "image-id"
    vpc_security_group_ids =  [aws_security_group.allow_ssh.id]
    instance_type = "var.instance_type"

    tags = "var.tags"
}

resource "aws_security_group" "allow_ssh" {
    name = "var.aws_security_group"
    description = "var.sg_description"

    #terraform block
    ingress {
        from_port        = 22
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    }

    egress {
        from_port        = 0 # from 0 to 0 means, opening all protocols
        to_port          = 0
        protocol         = "-1" # -1 all protocols
        cidr_blocks      = ["0.0.0.0/0"]
    }

    tags = {
        Name = "allow-all_ssh"
        CreatedBy = "Konda"
    }
}
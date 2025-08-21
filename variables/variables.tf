variable "image-id" {
    type = string
    default = "ami-090252cbe067a9e58"
    description = "RHEL-9 AMI ID"
}

variable "instance_type" {
    default = "t3.micro"
    type = string
}

variable "aws_security_group" {
    default = "Practice-Security-Group"
    type = string
}

variable "aws_security_group_id" {
    default = "sg-073530d8f67d1b474"
}

variable "tags" {
    default = {
        Project = "Expense"
        Environment = "Dev"
        Module = "DB"
        Name = "DB"
    }
}
variable "ssh_port" {
    default = 22
}
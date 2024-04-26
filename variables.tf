variable "vpc_id" {
    type = string
}

variable "my_ip" {
    type = string
    description = "Provide your IP eg.  MY_IP/32"
}

variable "public_key" {
    type = string
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "server_name" {
    type = string
    default = "Apache Example Server"
}
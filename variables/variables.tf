variable "ami_id"{
    type = string
    default =  "ami-0220d79f3f480ecf5"
    description= "RHEL 9 image"
}

variable "instance_type"{
    type = string
    default = "t3.micro"
}

variable "ec2_tags"{
    type = map
    default = {
        Name = "variables demo"
        project = "roboshop"
        Terraform = "true"
        Environment = "dev"
    }
}

variable "sg_name"{
    type = string
    default = "allow-all-terraform"
}

variable "sggroup_description"{
    type = string
    default = "Allow TLS inbound traffic and all outbound traffic"
}

variable "sg_tags"{
    type = string
    default = "allow-all-terraform"
}
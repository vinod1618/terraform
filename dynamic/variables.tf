# variable instances {
#     type = map
#     default = {
#         mongodb = "t3.micro",
#         redis = "t3.micro",
#        mysql = "t3.small",
#       catalogue = "t3.small"
#     }
# }

# The below should be converted into set

variable "instances"{
    type =list
    default = ["mongodb","redis"]
}


variable "ingress_rules"{
    default = [
        {
        port =22
        cidr_blocks = ["0.0.0.0/0"]
        description = "allowing port no 22"
        },
        {
        port =3309
        cidr_blocks = ["0.0.0.0/0"]
        description = "allowing port no 3309"
        },
        {
        port =443
        cidr_blocks = ["0.0.0.0/0"]
        description = "allowing port no 443"
        }
    ]
}



# variable "instances"{
#     type =list
#     default = ["mongodb","redis"]
# }

variable "zone_id"{
    default = "Z0938730IPVEZU3MQ9H2"
}

variable "domain_name"{
    default = "vinoddevops.online"
}
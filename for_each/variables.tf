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
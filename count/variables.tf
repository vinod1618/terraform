variable "instances"{
    type =list
    default = ["mongodb","redis","mysql","rabbitmq","catalogue","user","cart","shipping","payment","frontend"]
}


variable "zone_id"{
    default = "Z0938730IPVEZU3MQ9H2"
}


variable "domain_name"{
    default = "vinoddevops.online"
}

variable "fruits"{
    type = set(string)
    default = ["apple","bananna","orange","apple"]
}
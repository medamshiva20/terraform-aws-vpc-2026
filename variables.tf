variable "project"{
    type = string 
}

variable "environment"{
    type = string
}

variable "cidr_block"{
    type = string 
    default = "10.0.0.0/16"
}

variable "vpc_tags"{
    type = map(string)
    default = {}
}

variable "igw_tags"{
    type = map
    default = {}
}

variable "public_subnet_cidrs"{
    type = list
    default = ["10.0.1.0/24","10.0.2.0/24"]
}

variable "public_subnet_tags"{
    type = map
    default = {}
}

variable "private_subnet_cidrs"{
    type = list
    default = ["10.0.11.0/24","10.0.12.0/24"]
}

variable "private_sunbet_tags"{
    type = map
    default = {}
}

variable "database_subnet_cidrs"{
    type = list
    default = ["10.1.21.0/24","10.0.22.0/24"]
}

variable "database_subnet_tags"{
    type = map
    default = {}
}
data "aws_availability_zones" "available"{
    state = "available"
}

#If it is default vpc we can use below method 
#data "aws_vpc" "default" {
 # default = true
#}

data "aws_vpc" "prod-vpc"{
   id = "vpc-072112754da905ebf"
}
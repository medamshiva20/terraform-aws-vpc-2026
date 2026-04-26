data "aws_availability_zones" "available"{
    state = "available"
}

#If it is default vpc we can use below method 
#data "aws_vpc" "default" {
 # default = true
#}

data "aws_vpc" "prod_vpc"{
   id = "vpc-02369099af5a5808c"
}

data "aws_route_table" "prod"{
    vpc_id = data.aws_vpc.default.id
    filter {
        name = "association.main"
        values = ["true"]
    }
}
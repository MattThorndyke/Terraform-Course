resource "random_integer" "random"{
    min = 1
    max = 100 
}

resource "aws_vpc" "mt_vpc_prod"{
        cidr_block = var.vpc_cidr
        enable_dns_hostnames = true
        enable_dns_support = true

        tags = {
            Name = "mt_vpc-prod${random_integer.random.id}"
        }
}
resource "aws_vpc" "ntier_vpc" {
    cidr_block          = var.cidr_block
    tags = {
      "Name" = "n-tier"
    }
  
}

resource "aws_subnet" "ntier_subnets" {
    vpc_id              = aws_vpc.ntier_vpc.id
    count               = length(var.subnet_name_tag)
    cidr_block          = cidrsubnet(var.cidr_block,8,count.index)
    availability_zone   = var.subnets_av_zone[count.index]
    tags = {
      "Name" = var.subnet_name_tag[count.index]
    }

    depends_on = [
      aws_vpc.ntier_vpc
    ]
}
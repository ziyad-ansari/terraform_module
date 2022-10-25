output "vnetid" {
    value = aws_vpc.ntier_vpc.id
  
}

output "vpcname" {
    value = aws_vpc.ntier_vpc.tags
}

output "number_of_subnets" {
    value = length(var.subnet_name_tag)
}
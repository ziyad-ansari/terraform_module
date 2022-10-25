variable "region" {
    type        = string 
  
}

variable "cidr_block" {
    type        = string
  
}

variable "subnets_av_zone" {
    type        = list(string)
 
}

variable "subnet_name_tag" {
    type        = list(string) 
}
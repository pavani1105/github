   output "vpc_id" {
    value = module.vpc.vpc_cidr
}

output "public_subnet_id" {
    value = module.vpc.public_subnets
    #value = aws_subnet.public_subnets.*.id[count.index]
    #value = local.pub_sub_ids
}

output "private_subnet_id" {
    value = module.vpc.public_subnets
    #value = local.pri_sub_ids
}
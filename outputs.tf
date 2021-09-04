output "instance_id" {
  value       = module.ec2_bastion.instance_id
  description = "Instance ID"
}

output "security_group_ids" {
  value       = module.ec2_bastion.security_group_ids
  description = "Security group IDs"
}

output "role" {
  value       = module.ec2_bastion.role
  description = "Name of AWS IAM Role associated with the instance"
}

output "public_ip" {
  value       = module.ec2_bastion.public_ip
  description = "Public IP of the instance (or EIP)"
}

output "private_ip" {
  value       = module.ec2_bastion.private_ip
  description = "Private IP of the instance"
}

output "private_dns" {
  description = "Private DNS of instance"
  value       = module.ec2_bastion.private_dns
}

output "public_dns" {
  description = "Public DNS of instance (or DNS of EIP)"
  value       = module.ec2_bastion.public_dns
}

output "id" {
  description = "Disambiguated ID of the instance"
  value       = module.ec2_bastion.id
}

output "arn" {
  description = "ARN of the instance"
  value       = module.ec2_bastion.arn
}

output "name" {
  description = "Instance name"
  value       = module.ec2_bastion.name
}

output "security_group_id" {
  value       = module.ec2_bastion.security_group_ids
  description = "Bastion host Security Group ID"
}

output "public_subnet_cidrs" {
  value = module.public_subnets.az_subnet_cidr_blocks
}

output "private_subnet_cidrs" {
  value = module.private_subnets.az_subnet_cidr_blocks
}

output "vpc_cidr" {
  value = module.vpc.vpc_cidr_block
}

output "key_name" {
  value = module.aws_key_pair.key_name
}

output "public_key" {
  value = module.aws_key_pair.public_key
}

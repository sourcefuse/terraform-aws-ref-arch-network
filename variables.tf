variable "environment" {
  type        = string
  description = "Name of the environment, i.e. dev, stage, prod"
  default     = "dev"
}

variable "profile" {
  type        = string
  description = "AWS Config profile"
  default     = "sf_ref_arch"
}

variable "region" {
  type        = string
  description = "AWS Region"
}

variable "namespace" {
  type        = string
  description = "Namespace of the project, i.e. refarch"
  default     = "refarch"
}

variable "tags" {
  type        = map(string)
  description = "Default tags to apply to every resource"
}

variable "availability_zones" {
  type        = list(string)
  description = "List of availability zones to deploy resources in."
}

variable "vpc_cidr_block" {
  type        = string
  description = "CIDR block for the VPC to use."
}

variable "zone_id" {
  type        = string
  default     = ""
  description = "Route53 DNS Zone ID"
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "Bastion instance type"
}

variable "user_data" {
  type        = list(string)
  default     = []
  description = "User data content"
}

variable "ssh_key_path" {
  type        = string
  description = "Save location for ssh public keys generated by the module"
}

variable "generate_ssh_key" {
  type        = bool
  description = "Whether or not to generate an SSH key"
}

variable "security_groups" {
  type        = list(string)
  description = "List of Security Group IDs allowed to connect to the bastion host"
}

variable "root_block_device_encrypted" {
  type        = bool
  default     = false
  description = "Whether to encrypt the root block device"
}

variable "root_block_device_volume_size" {
  type        = number
  default     = 8
  description = "The volume size (in GiB) to provision for the root block device. It cannot be smaller than the AMI it refers to."
}

variable "metadata_http_endpoint_enabled" {
  type        = bool
  default     = true
  description = "Whether the metadata service is available"
}

variable "metadata_http_tokens_required" {
  type        = bool
  default     = false
  description = "Whether or not the metadata service requires session tokens, also referred to as Instance Metadata Service Version 2."
}

variable "associate_public_ip_address" {
  type        = bool
  default     = true
  description = "Whether to associate public IP to the instance."
}

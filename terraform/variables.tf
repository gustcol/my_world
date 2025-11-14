variable "region" {
default = "us-east-1"
}
# Variáveis para o módulo da VPC
variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

# Variáveis para o módulo do bucket S3
variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}

# Variáveis para o módulo da instância EC2
variable "ami_id" {
  description = "ID of the AMI"
  type        = string
}

variable "instance_type" {
  description = "Type of the EC2 instance"
  type        = string
  default     = "t2.micro"
}

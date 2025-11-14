module "vpc" {
  source            = "../modules/aws_vpc"
  vpc_cidr_block    = "10.0.0.0/16"
}

module "s3" {
  source      = "../modules/aws_s3"
  bucket_name = "my-bucket"
}

module "ec2" {
  source       = "../modules/aws_ec2"
  ami_id       = "ami-12345678"
  instance_type = "t2.micro"
  vpc_id            = module.vpc.vpc_id
  subnet_id         = module.vpc.subnet_id
}

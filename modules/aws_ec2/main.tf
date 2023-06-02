resource "aws_instance" "my_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.my_subnet.id

  tags = {
    Name = "my-instance"
  }
}

resource "aws_ebs_volume" "my_volume" {
  availability_zone = aws_subnet.my_subnet.availability_zone
  size              = 50
}

resource "aws_volume_attachment" "ebs_attach" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.my_volume.id
  instance_id = aws_instance.my_instance.id
}
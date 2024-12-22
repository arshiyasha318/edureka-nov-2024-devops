//create subnet 3
resource "aws_subnet" "subnet3" {
  vpc_id     = aws_vpc.devops-vpc.id
  cidr_block = "10.0.2.0/24"
  map_public_ip_on_launch = true
  availability_zone = "ap-south-1b"

  tags = {
    Name = "subnet3"
  }
}

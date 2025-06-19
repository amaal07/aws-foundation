resource "aws_nat_gateway" "example" {
  allocation_id = "eipalloc-018346559d774dc56"
  subnet_id     = "subnet-08e7678423f1ee84c"

  

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  #depends_on = [aws_internet_gateway.example]
}
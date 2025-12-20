resource "aws_instance" "example" {
  ami           = "ami-03265a0778a880fb"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}
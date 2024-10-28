# number2.tf
provider "aws" {
  region = "us-west-2"
}

resource "aws_security_group" "example" {
  name        = "allow_all"
  description = "Allow all inbound traffic"
  
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]  # Open to all IPs - insecure
  }
}

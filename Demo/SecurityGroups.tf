resource "aws_security_group" "test_sg" {
  name        = "test_sg"
  description = "Allow TLS inbound traffic"
  vpc_id      = "vpc-01c0c470de33d22ec"

  ingress {
    description      = "open 443"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["27.78.222.128/32"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}
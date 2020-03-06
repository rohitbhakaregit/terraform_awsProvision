provider "aws" {
  region  = "us-east-1"
}
data "aws_security_group" "selected" {
  id = "sg-063bb339b0d487132"
}

resource "aws_instance" "ec2_instace1" {
  ami           =  "ami-07ebfd5b3428b6f4d"
  instance_type = "t2.micro"
  key_name = "universal"
  subnet_id = "subnet-02460d9874cc97281" 
  }

output "instance_public_dns" {
  value = aws_instance.ec2_instace1.public_dns
}


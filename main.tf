# provider block
# q : what is the purpose of provider block ?
# a : The provider block configures the named provider, in our case aws, which is responsible for creating and managing resources.
provider "aws" {
  region = "ap-south-1"
}

# resource block
# q : what is the purpose of resource block ?
# a : The resource block defines a piece of infrastructure. A resource might be a physical component such as an EC2 instance.
resource "aws_instance" "devopsmotivation" {
  ami           = "ami-0447a12f28fddb066" # ubuntu 18.04
  instance_type = "t2.micro" 
  tags = {
    Name = "devopsmotivation" 
  }
}

# output block
# q : what is the purpose of output block ?
# a : The output block prints the public IP address of the EC2 instance.
output "devopsmotivation" {
  value = aws_instance.devopsmotivation.public_ip
}






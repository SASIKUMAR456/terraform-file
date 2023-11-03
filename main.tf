provider "aws" {
    region = "ap-south-1"
    access_key = "AKIAXADIKOVYDFX5PIH7"
    secret_key = "7cX3XYwjOhkx7HQxBvqR7gbpKt+wX2FBrEYWSMoR" 
}


resource "aws_instance" "instance_example" {

    ami = "ami-067d1e60475437da2"
    instance_type = var.instance_type
    key_name = aws_key_pair.generated_key.key_name
    tags = {
      Name="Connect_to_EC2"
    }
}

variable "instance_type" {

  
}
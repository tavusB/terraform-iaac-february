provider "aws" {
    region = "us-east-1"
    version = "2.59" #~> means above 2.52 "~>2.52"
}
// creates key
resource "aws_key_pair" "us-east-1-key-output" {
  key_name   = "tavus_bastion_output"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}

//creates instances
resource "aws_instance" "web-output" {
  ami           = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"
}

//creates SG


//creates rout53

//outputs everything
output "key_pair" {
  value = "${aws_key_pair.us-east-1-key-output.key_name}"
}
output "instance_id" {
  value = "${aws_instance.web-output.id}"
}
output "instance_arn" {
  value = "${aws_instance.web-output.arn}"
}
output "my_message" {
  value = "please login and change your password"
}

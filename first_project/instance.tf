resource "aws_instance" "web" {
  #resource argument
  instance_type = "t2.micro"
  ami           =   "ami-0323c3dd2da7fb37d"
key_name        = "${aws_key_pair.us-east-1-key.key_name}"

#if we want to find out where is tha key created we can run below command and it will show where that key belong
# [ec2-user@ip-172-31-23-237 first_project]$ terraform console
# > "${aws_key_pair.us-east-1-key.key_name}"
# first_class_bastion
# >  

security_groups = ["${aws_security_group.allow_tls.name}"]
  tags = {

    Name = "First_terraform_class"
  }
}

resource "aws_key_pair" "asg-key" {
  key_name   = "Terraform"
  public_key =  "${file("~/.ssh/id_rsa.pub")}"
}
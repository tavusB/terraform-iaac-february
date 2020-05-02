#create key pear and read created key pair from file
resource "aws_key_pair" "deployer" {
  key_name   = "tavus_bastion_project1"
  public_key = "${file("~/.ssh/id_rsa.pub")}"  #we are going to add faction location in it  # it was before public_key="key was in int"
}
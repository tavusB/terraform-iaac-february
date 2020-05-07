output "name" {
  value = "Tavus"
}
output "lastname" {
  value = "Beshimova"
}

resource "aws_key_pair" "us-east-1-key" {
  key_name   = "tavus_bastion"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}

output "actual_key" {
  value = "${aws_key_pair.us-east-1-key.public_key}"
}

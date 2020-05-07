#create an instance ============================================================================================================================
resource "aws_instance" "web" {
  ami           = "ami-0d6621c01e8c2de2c"
  instance_type = "t2.large"
  key_name = "${aws_key_pair.deployer.key_name}"                #we added we copyed 3 part info yukardaki key_name instance a attach yaptik 
  security_groups = ["${aws_security_group.allow_tls.name}"]    #asagidan sec group ekledik asagidaki butun sec groupbu bu instance aaldik 
                                                                  #user_data = "${file("script.sh")}" you can add this line with userdata file .sh

                                                                  #user data can be here with this format 6 line of code 
  user_data = <<EOF
     #! /bin/bash
     sudo yum install -y httpd
     sudo systemctl start httpd
     #sudo systemctl enable httpd
  EOF

tags = {
    Name = "HelloWorld2"
  }
}

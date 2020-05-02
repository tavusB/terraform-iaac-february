resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket-tavus"
  acl    = "private"

#if we want to to see bucket name we create we need to run below command ad it will show bucket names
#   [ec2-user@ip-172-31-23-237 first_project]$ aws s3 ls
# 2020-04-11 05:02:51 ansible-tower-tavus14
# 2020-05-02 03:23:09 my-tf-test-bucket-tavus

  tags = {
    Name        = "First_project"
    Environment = "Dev"
  }
}
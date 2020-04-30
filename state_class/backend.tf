
terraform {
  required_version = "0.11.14"
  backend "s3" {

    
    bucket = "state-class-tavus"
    key    = "path/to/my/key"
    dynamodb_table = "state_class"
    region = "us-east-1"
  }
resource "aws_iam_user" "tim" { 
    name = "tim" 
    path = "/" 
} 
  
resource "aws_iam_group" "developers" { 
    name = "developers" 
    path = "/" 
} 

resource "aws_iam_group_membership" "developers_team" { 
  name = "developers-group-membership" 
  users = "${ aws_iam_user.tim.name}"

}
  group = "${aws_iam_group.developers.name}" 
} 


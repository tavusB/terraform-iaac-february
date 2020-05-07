provider "aws" {
    region = "us-east-1"
    version = "2.59" #~> means above 2.52 "~>2.52"
}

terraform 
{
    required_version = "0.11.14"
}
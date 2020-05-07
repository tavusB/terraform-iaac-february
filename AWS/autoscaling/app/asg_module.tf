module "app1" { 
source = "./module"
region =  "us-east-1"
owners = "137112412989"
} 

module "wordpress" { 
source = "./module" 
region =  "us-east-2"
owners = "137112412989"
}
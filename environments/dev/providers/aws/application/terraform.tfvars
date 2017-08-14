# GLOBAL
deployment_name = "demo"

# TAGS 
application_dns = "www.demo.f5example.com"
application = "www"
environment = "dev"
owner = "example"
group = "example"
costcenter = "cc4353"
purpose = "public"

## US-WEST-2
region = "us-west-2"
vpc_id = "vpc-747fa112"

# Used for Clusters or Autoscale
availability_zones = "us-west-2a,us-west-2b"

# Customize per external or internal use-case
subnet_ids = "subnet-2a888a63,subnet-2f4da549"



ssh_key_name = "004-VE-DEMO"

instance_type = "t2.small"

# Custom Images
# app_amis = {
#     "ap-northeast-1" = "ami-5b82503a"
#     "ap-southeast-1" = "ami-2e67c24d"
#     "ap-southeast-2" = "ami-3af5c559"
#     "eu-west-1" = "ami-9c5f25ef"
#     "sa-east-1" = "ami-6a52c106"
#     "us-east-1" = "ami-93fa8284"
#     "us-west-1" = "ami-5f1b553f"
#     "us-west-2" = "ami-c1e13da1"
# }


# Ubuntu 14.04 LTS (HVM)
# Asia Pacific (Mumbai)       ami-0782f168
# EU (Ireland)                ami-4cb58e2a
# Asia Pacific (Singapore)    ami-6f74ca0c
# Asia Pacific (Sydney)       ami-93e8e6f0
# Asia Pacific (Seoul)        ami-d6db09b8
# EU (Frankfurt)              ami-c14c9fae
# Asia Pacific (Tokyo)        ami-5b1d3e3c
# US East (N. Virginia)       ami-522ea044
# US West (N. California)     ami-bc4461dc
# South America (Sao Paulo)   ami-ef1e7c83
# US West (Oregon)            ami-a0b727c0


# app_amis = {
#     "ap-northeast-1" = "ami-5b1d3e3c"
#     "ap-northeast-2" = "ami-d6db09b8"
#     "ap-southeast-1" = "ami-6f74ca0c"
#     "ap-southeast-2" = "ami-93e8e6f0"
#     "ap-south-1" = "ami-0782f168"
#     "eu-central-1" = "ami-c14c9fae"
#     "eu-west-1" = "ami-4cb58e2a"
#     "sa-east-1" = "ami-ef1e7c83"
#     "us-east-1" = "ami-522ea044"
#     "us-west-1" = "ami-bc4461dc"
#     "us-west-2" = "ami-a0b727c0"
# }

# app_instance_type = "t1.micro"

# Xenial 16.04

# EU (London)                 ami-4d3a2e29    
# EU (Ireland)                ami-b5a893d3    
# Asia Pacific (Seoul)        ami-3cda0852    
# Asia Pacific (Tokyo)        ami-c9e3c0ae    
# South America (Sao Paulo)   ami-36187a5a    
# Canada (Central)            ami-9eee52fa    
# Asia Pacific (Singapore)    ami-6e74ca0d    
# Asia Pacific (Sydney)       ami-92e8e6f1    
# EU (Frankfurt)              ami-1b4d9e74    
# US East (N. Virginia)       ami-e4139df2    
# US East (Ohio)              ami-33ab8f56    
# US West (N. California)     ami-30476250    
# US West (Oregon)            ami-17ba2a77

amis = {
    "ap-northeast-1" = "ami-c9e3c0ae"
    "ap-northeast-2" = "ami-3cda0852"
    "ap-southeast-1" = "ami-6e74ca0d"
    "ap-southeast-2" = "ami-92e8e6f1"
    "eu-central-1" = "ami-1b4d9e74"
    "eu-west-1" = "ami-b5a893d3"
    "sa-east-1" = "ami-36187a5a"
    "us-east-1" = "ami-e4139df2"
    "us-east-2" = "ami-33ab8f56"
    "us-west-1" = "ami-30476250"
    "us-west-2" = "ami-17ba2a77"
}


# APPLICATION VARS:
docker_image = "f5devcentral/f5-demo-app:blue"

# AUTO SCALE
scale_min = 3
scale_max = 3
scale_desired = 3

# 



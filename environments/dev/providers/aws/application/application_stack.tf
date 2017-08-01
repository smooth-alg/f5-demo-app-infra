# TAGS
variable application_dns  { default = "www.example.com" }  # ex. "www.example.com"
variable application      { default = "www"             }  # ex. "www" - short name used in object naming
variable environment      { default = "f5env"           }  # ex. dev/staging/prod
variable owner            { default = "f5owner"         }  
variable group            { default = "f5group"         }
variable costcenter       { default = "f5costcenter"    }  
variable purpose          { default = "public"          }  

##### PLACEMENT
variable region {}
variable vpc_id {}
variable availability_zones {}
variable subnet_ids {}

#####  APPLICATION 
variable docker_image {}
variable amis { type = "map" }
variable instance_type {}
variable ssh_key_name {}
variable restricted_src_address { default = "0.0.0.0/0" }
variable site_ssl_cert { default = "none" }
variable site_ssl_key  { default = "none" }


#### AUTO SCALE
variable scale_min      { default = 1 }
variable scale_max      { default = 3 }
variable scale_desired  { default = 1 }



########################################

provider "aws" {
  region = "${var.region}"
}

module "app" {
  source = "github.com/f5devcentral/f5-terraform//modules/providers/aws/application?ref=v0.0.8"
  application_dns = "${var.application_dns}"
  application = "${var.application}"
  environment = "${var.environment}"
  owner = "${var.owner}"
  group = "${var.group}"
  costcenter = "${var.costcenter}"
  purpose = "${var.purpose}"
  region = "${var.region}"
  vpc_id = "${var.vpc_id}"
  availability_zones = "${var.availability_zones}"
  subnet_ids = "${var.subnet_ids}"
  docker_image = "${var.docker_image}"
  instance_type = "${var.instance_type}"
  ssh_key_name = "${var.ssh_key_name}"
  restricted_src_address  = "${var.restricted_src_address}"
  scale_min = "${var.scale_min}"
  scale_max = "${var.scale_max}"
  scale_desired = "${var.scale_desired}"
}

output "sg_id" { value = "${module.app.sg_id}" }
output "sg_name" { value = "${module.app.sg_name}" }

output "asg_id" { value = "${module.app.asg_id}" }
output "asg_name" { value = "${module.app.asg_name}" }


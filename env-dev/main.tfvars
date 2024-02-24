vpc_cidr_block = "10.10.0.0/16"
env= "dev"
tags = {
  company = "xyz.co"
  bu_unit = "Finance"
  project_name = "expense"
}

public_subnets = ["10.10.0.0/24", "10.10.1.0/24"]
web_subnets    = ["10.10.2.0/24", "10.10.3.0/24"]
app_subnets    = ["10.10.4.0/24", "10.10.5.0/24"]
db_subnets     = ["10.10.6.0/24", "10.10.7.0/24"]

azs                    = ["us-east-1a", "us-east-1b"]
account_id             = "827956817277"
default_vpc_id         = "vpc-05d61a29df92cedf0"
default_route_table_id = "rtb-00fca9562f27c8a7c"
default_vpc_cidr       = "172.31.0.0/16"

rds_allocated_storage = 20
rds_engine            = "mysql"
rds_engine_version    = "5.7.44"
rds_instance_class    = "db.t3.micro"

backend = {
  app_port       = 8080
  instance_count = 1
  instance_type  = "t3.small"
}
frontend = {
  app_port       = 80
  instance_count = 1
  instance_type  = "t3.small"
}
bastion_cidrs    = ["172.31.46.160/32"]

public_alb = {
  internal     = false
  lb_port      = 80
  type         = "public"
  component    = "frontend"
  enable_https = true
  ingress = {
    http  = { port = 80 }
    https = { port = 443 }
  }
}

backend_alb = {
  internal     = true
  lb_port      = 80
  type         = "backend"
  component    = "backend"
  enable_https = false
  ingress = {
    http = { port = 80 }
  }
}



route53_zone_id = "Z0021413JFIQEJP9ZO9Z"
#kms             = "arn:aws:kms:us-east-1:633788536644:key/36a1180a-d43b-4561-ab19-dc55e634b8fb"
certificate_arn = "arn:aws:acm:us-east-1:633788536644:certificate/f48fadb0-e24c-4370-90e8-d3718672a46e"
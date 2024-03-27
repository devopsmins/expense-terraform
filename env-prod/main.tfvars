vpc_cidr_block = "10.20.0.0/16"
env= "prod"
tags = {
  company = "xyz.co"
  bu_unit = "Finance"
  project_name = "expense"
}

public_subnets = ["10.20.0.0/24", "10.20.1.0/24"]
web_subnets    = ["10.20.2.0/24", "10.20.3.0/24"]
app_subnets    = ["10.20.4.0/24", "10.20.5.0/24"]
db_subnets     = ["10.20.6.0/24", "10.20.7.0/24"]

azs                    = ["us-east-1a", "us-east-1b"]
account_id             = "827956817277"
default_vpc_id         = "vpc-05d61a29df92cedf0"
default_route_table_id = "rtb-00fca9562f27c8a7c"
default_vpc_cidr       = "172.31.0.0/16"

rds_allocated_storage = 20
rds_engine            = "mysql"
rds_engine_version    = "5.7.44"
rds_instance_class    = "db.t3.small"

backend = {
  app_port       = 8080
  instance_count = 2
  instance_type  = "t3.small"
}
frontend = {
  app_port       = 80
  instance_count = 2
  instance_type  = "t3.small"
}
bastion_cidrs    = ["172.31.46.160/32"]
prometheus_cidrs = ["172.31.46.200/32"]

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

route53_zone_id = "Z05815251WQO0OK50UPQR"
kms             = "arn:aws:kms:us-east-1:827956817277:key/42af000f-94d6-4913-a952-14877c37a92e"
certificate_arn = "arn:aws:acm:us-east-1:827956817277:certificate/3841c970-14da-4ec8-84d4-4f62d433c424"
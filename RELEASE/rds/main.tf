data "terraform_remote_state" "main" {
  backend = "s3"
  config = {
    bucket = "terraform-backend-startup"
    key = "us-east-1/rds"
    region = "us-east-1"
  }
  
}


output "full_list"{
    value = data.terraform_remote_state.main.outputs.*
}


module "rds" {
    source = "farrukh90/rds-instance/aws"
    region              = "us-east-1"
    identifier          = "dbname"
    allocated_storage   = 20
    storage_type        = "gp2"
    engine              = "mysql"
    engine_version      = "5.7"
    instance_class      = "db.t2.micro"
    name                = "mydb"
    username            = "foo"
    publicly_accessible = true
    subnet_ids = [
        data.terraform_remote_state.main.outputs.public_subnet1,
        data.terraform_remote_state.main.outputs.public_subnet2,
        data.terraform_remote_state.main.outputs.public_subnet3,
    ]
    allowed_hosts = ["0.0.0.0/0"]
}

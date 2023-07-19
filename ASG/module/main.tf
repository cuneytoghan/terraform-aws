module "asg" {
  source           = "../"
  region           = "us-east-1"
  name_prefix      = "foobar"
  image_id         = "ami-06ca3ca175f37dd66"
  instance_type    = "t2.micro"
  desired_capacity = 1
  max_size         = 99
  min_size         = 1
  subnets          = ["subnet-03b9300afdc242593"]
  tags = {
    Name = "startup"
  }
}
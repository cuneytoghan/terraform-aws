variable "tags" {
  type        = map(any)
  default     = {}
  description = "Please provide a tag for resources"
}

variable "region" {
  description = "The AWS region where the RDS instance will be created"
  type        = string
}

variable "allocated_storage" {
  description = "The allocated storage in GB"
  type        = number
  default     = 20
}

variable "db_name" {
  description = "The name of the database"
  type        = string
  default     = "mydb"
}

variable "engine" {
  description = "The database engine"
  type        = string
  default     = "mysql"
}

variable "engine_version" {
  description = "The version of the database engine"
  type        = string
  default     = "5.7"
}

variable "instance_class" {
  description = "The instance class"
  type        = string
  default     = "db.t3.micro"
}

variable "username" {
  description = "The database username"
  type        = string
  default     = "foo"
}

variable "password" {
  description = "The database password"
  type        = string
  default     = "foobarbaz"
}

variable "publicly_accessible" {
  description = "Whether the database should be publicly accessible"
  type        = bool
  default     = true
}

variable "tags" {
  type        = map(any)
  default     = {}
  description = "Please provide a tag for resources"
}

variable "region" {
  description = "The AWS region where the RDS instance will be created"
  type        = string
}
variable "name_prefix" {
  type        = string
  default     = ""
  description = "description"
}
variable "image_id" {
  type        = string
  default     = ""
  description = "description"
}
variable "instance_type" {
  type        = string
  default     = ""
  description = "description"
}
variable "desired_capacity" {
  type        = string
  default     = ""
  description = "Please provide a value"
}

variable "max_size" {
  type        = string
  default     = ""
  description = "Please provide a value"
}

variable "min_size" {
  type        = string
  default     = ""
  description = "Please provide a value"
}
variable subnets {
  type        = list
  default     = []
  description = "please provide list of subnets"
}

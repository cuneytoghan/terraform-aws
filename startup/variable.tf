variable "cidr_block" {
  type        = string
  default     = ""
  description = "Please provide CIDR block for VPC"
}
variable "region" {
  type        = string
  default     = ""
  description = "Please provide a region for provider"
}

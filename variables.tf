variable "region" {
  type = string
  default = "eu-west-3"
}


variable "instance_type" {
  type        = string
  default     = "t2.large"
  description = "Instance type for EC2"
}


variable "key_name" {
  type        = string
  default     = "ec2-key"
  description = "EC2 key name"
}
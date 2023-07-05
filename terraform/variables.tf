variable "aws_vpc_id" {
  type          = string
  description   = "AWS VPC ID deployed from network repo"
  default       = "vpc-034af3d60a681b1f6"
}

variable "aws_public_subnet_ids" {
  description = "public subnet ids"
  default     = ["subnet-0ba5c553f75ebf202", "subnet-0c7bdf2ef242a96eb"] 
}

variable "aws_private_subnet_ids" {
  description = "private subnet ids"
  default     = ["subnet-0141c40655ad45b07", "subnet-042006a678190ff0c"] 
}

variable "aws_region" {
  type        = string
  description = "AWS Region"
  default = "us-east-1"
}

variable "app_name" {
  type        = string
  description = "Application Name"
  default = "foodtruck-app"
}

variable "ecs_twitter_env_secrets_key" {
  description = "Secrets key file"
  default = "ecs_env_vars.json"
}

variable "ecs_twitter_env_secrets_folder" {
  description = "Secrets S3 folder"
  default = "foodtruck-twitter-secrets"
}

variable "dynamodb_vendor_table_name" {
  description = "Table name for dynamodb vendors"
  default = "vendors"
}

variable "sqs_queue_name" {
  description = "Name for SQS queue"
  default = "vendor-twitter-queue"
}

variable "image_tag" {}

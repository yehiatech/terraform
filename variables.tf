variable "region" {
  type    = string
  default = "us-east-1"

}
variable "server_type" {
  type        = string
  default     = "t3.micro"
  description = "The ec2 instance type"
}
variable "server_name" {
  type        = string
  default     = "Dev-server"
  description = "the ec2 instance name"

}
variable "environment" {
  type        = string
  default     = "Dev"
  description = "the environment this server will work in "
}
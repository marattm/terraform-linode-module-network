variable "linode_ids" {}
variable "db_linode_ids" {}
variable "web_servers_private_ips" {}

variable "ENV" {
  description = "Environment var."
  type        = string
  default     = ""
}

variable "SITE" {
  description = "Site name of the project/app."
  default     = ""
}

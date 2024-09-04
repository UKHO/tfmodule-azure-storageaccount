variable "servicename" {
  type = string
}
variable "role" {
  type = string
}
variable "deploy_environment" {
  type = string
}
variable "resource_group_name" {
  type = string
}
variable "resource_group_location" {
  type = string
}
variable "account_kind" {
  type = string
}
variable "account_tier" {
  type = string
}
variable "account_replication_type" {
  type = string
}
variable "access_tier" {
  type = string
}
variable "https_traffic_only_enabled" {
  type = bool
}
variable "min_tls_version" {
  type = string
  default = "TLS1_2"
}
variable "subnet_ids" {
  type = list(string)
   default = []
}
variable "subscription_id" {
  type = string
}
variable "allowed_ips" {
  type = list(string)
  default = []
}
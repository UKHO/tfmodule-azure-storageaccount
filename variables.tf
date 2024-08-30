variable "servicename" {
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
variable "subnet_ids" {
  type = list(string)
}
variable "subscription_id" {
  type = string
}
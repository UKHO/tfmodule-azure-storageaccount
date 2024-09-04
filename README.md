# Terraform Module: for Storage account with restricted public access

This module can be used to create a storage account that is configured to restrict public 

## Required Resources

- `Resource Group` exists or is created external to the module.
- `Provider` must be created external to the module.

## Usage

```terraform
variable "subscription_id" {
  type = string
  description = "The subscription id for where the storage account will be created"
}
variable "servicename" {
  type        = string
  description = "The name of your service"
}
variable "role" {
  type        = string
  description = "Role name but can be left as blank"
}
variable "deploy_environment" {
  type = string
  description = "THe envioronment for release e,g dev"
}
variable "resource_group_name" {
  type = string
  description = "The name of the resource group where the storage account will be created"
}
variable "resource_group_location" {
  type = string
  description = "Location of the resource group e.g UKSouth"
}
variable "account_kind" {
  type = string
  description = "Account kind e.g StorageV2"
}
variable "account_tier" {
  type = string
  description = "Account tier e.g Standard"
}
variable "account_replication_type" {
  type = string
  description = "Replication type e.g LRS"
}
variable "access_tier" {
  type = string
  description = "Access tier e.g Hot"
}
variable "https_traffic_only_enabled" {
  type = bool
  description = "Should be set as True"
}
variable "min_tls_version" {
  type    = string
  default = "TLS1_2"
  description = "Minimium level should now be TLS1_2"
}
variable "subnet_ids" {
  type    = list(string)
  default = []
  description = "A list of subnet resource ids, pass things like the AzDoPrd-vnet subnet reource id, can be 0 or many but atleast one subnet or ip must be set"
}
variable "allowed_ips" {
  type    = list(string)
  default = []
  description = "A list of ip addresses, pass things like the the ukho site ip address, can be 0 or many but atleast one subnet or ip must be set"
}

```


## Condition for subnets / ip addresses

You must supply at least one subnet or one ip address when using this module, failure to do so with resort in a warning in the terraform plan.

It is recommended that the AzDoPrd-vnet subnet resource id is passed as a minimium, buth more can be passed in the array if other connectivity is required.





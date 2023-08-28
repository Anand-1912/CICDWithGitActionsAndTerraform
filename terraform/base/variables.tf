variable "location" {
  default     = "uk south"
  description = "Azure region where all the resources will be deployed to"
}

variable "organization" {
  default     = "jcapcloud"
  description = "Organization name"
}

variable "location_suffix" {
  default = "uksouth"
}

variable "resource_group" {
  default = "rg-superapp-"
}

variable "sa_name" {
  default = "superapptfstorage"
}

variable "environment" {
  default     = "dev"
  description = "Name of the target environment"
}

variable "tags" {
  type        = map(string)
  
  default = {
    Department = "JCAP Cloud"
    CreatedBy   = "IT Innovation"
    Domain        = "Learning"
    Environment = "Development"
  }
  description = <<-HEREDOC
  Everything should be tagged, for guidance see:-
  https://docs.microsoft.com/en-us/azure/azure-resource-manager/resource-manager-subscription-governance#resource-tags
HEREDOC
}

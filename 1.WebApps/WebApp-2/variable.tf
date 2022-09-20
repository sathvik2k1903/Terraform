# terraform variables will be given in this variable.tf file
variable "webapp1_resource_group_name" {
    type        = string
    description = "RG name in Azure"
}

variable "webapp2_resource_group_name" {
    type        = string
    description = "RG name in Azure"
}

variable "webapp1_resource_group_location" {
    type        = string
    description = "RG location in Azure"
}

variable "webapp2_resource_group_location" {
    type        = string
    description = "RG location in Azure"
}

variable "webapp1_app_service_plan_name" {
    type        = string
    description = "App Service Plan name in Azure"
}

variable "webapp2_app_service_plan_name" {
    type        = string
    description = "App Service Plan name in Azure"
}

variable "webapp1_app_service_name" {
    type        = string
    description = "App Service name in Azure"
}

variable "webapp2_app_service_name" {
    type        = string
    description = "App Service name in Azure"
}
variable "subscription_id" {
  default = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
}

variable "client_id" {
  default = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
}

variable "client_secret" {
  default = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
}

variable "tenant_id" {
  default = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
}

variable "container_group_name" {
  default     = "foxutechgroup"
  description = "The name of the container group"
}

variable "resource_group_name" {
  default     = "foxutech"
  description = "The name of the resource group"
}

variable "location" {
  default     = "eastus"
  description = "Azure location"
}

variable "os_type" {
  default     = "linux"
  description = "The OS for the container group. Allowed values are Linux and Windows"
}

variable "container_name" {
  default     = "jenkins"
  description = "The name of the container"
}

variable "image_name" {
  default     = "jenkins/jenkins"
  description = "The container image name"
}

variable "cpu_core_number" {
  default     = "4"
  description = "The required number of CPU cores of the containers"
}

variable "memory_size" {
  default     = "12"
  description = "The required memory of the containers in GB"
}

variable "port_number-1" {
  default     = "8080"
  description = "A public port for the container"
}

variable "port_number-2" {
  default     = "50000"
  description = "A public port for the container"
}

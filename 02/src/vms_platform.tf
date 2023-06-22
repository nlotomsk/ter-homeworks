variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}

variable "vm_name" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "name system"
}

variable "vm_web_instance_platform_id" {
  type        = string
  default     = "standard-v1"
  description = "Platform ID"
}

variable "vm_web_resources" {
  type        = map
  default = {
    "cores"       = 2
    "memory"       = 1
    "core_fraction" = 5
  }
  description = "web_resources"
}

variable "vm_web_instance_scheduling_policy" {
  type        = bool
  default     = true
  description = "Scheduling policy"
}

variable "vm_web_instance_network_interface_nat" {
  type        = bool
  default     = true
  description = "Interface NAT"
}

variable "vm_db_instance_platform_id" {
  type        = string
  default     = "standard-v1"
  description = "Platform ID"
}

variable "vm_db_resources" {
  type        = map
  default = {
    "cores"        = 2
    "memory"        = 2
    "core_fraction" = 20
  }
  description = "web_resources"
}

variable "vm_db_instance_scheduling_policy" {
  type        = bool
  default     = true
  description = "Scheduling policy"
}

variable "vm_db_instance_network_interface_nat" {
  type        = bool
  default     = true
  description = "Interface NAT"
}

variable "vm_metadata" {
  type        = map
  default = {
    "serial-port-enable"        = 1
    "ssh-keys"        = "ubuntu:ssh-rsa "
  }
  description = "vm_metadata"
}


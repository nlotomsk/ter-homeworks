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
    "ssh-keys"        = "ubuntu:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDE07vTnYuh0xwI5BW1HjxBfQEnzJyIdG6kAVThZimOj4R3B5jxjxW2GCssIcS2/lMBTeQ95ZLXRZ7yQvkhGgW0uLHJ3j9Rdn9pOC6usDkNWNW97b/Ru4MokuFuflT7myak5LcmUYJ4FFcOcItPnn5J4In+7WWVdkAd89sb3TM+3cUc6J1q8A9+00gF4nB9XSv1ZAEUkrsbdenjqf5ExVyVL9LrTTMbpIo8UkYkJCBq2hKBuSqRtzsIEbp8oMayHfGK/sFpAwh+vjrvsZp9kbs8+JRz6hOU1pHRXwZV/FBlnP7yCLULp+7w2SVVSn8Tl0D8laYUU6ffT49NlQVjsKdroSswgiFk80YBfdjY3ERZAdaEhHGlC8LJPOqpL8np3G4w9cR7KPHJfZEJaNrehgDAGfER4s1bLG8J1fDG+0WzJ+DAdrXenpEqhdGQGdhqLq3rjzHzq7obW6+TDyeJQ5aBAgnytzv6KUd6DdSiHVaerkNEphr8X0fDL16CcDf81QE= senibratov@debian"
  }
  description = "vm_metadata"
}


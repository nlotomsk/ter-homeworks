###cloud vars
variable "token" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}


###ssh vars

variable "vms_ssh_root_key" {
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDE07vTnYuh0xwI5BW1HjxBfQEnzJyIdG6kAVThZimOj4R3B5jxjxW2GCssIcS2/lMBTeQ95ZLXRZ7yQvkhGgW0uLHJ3j9Rdn9pOC6usDkNWNW97b/Ru4MokuFuflT7myak5LcmUYJ4FFcOcItPnn5J4In+7WWVdkAd89sb3TM+3cUc6J1q8A9+00gF4nB9XSv1ZAEUkrsbdenjqf5ExVyVL9LrTTMbpIo8UkYkJCBq2hKBuSqRtzsIEbp8oMayHfGK/sFpAwh+vjrvsZp9kbs8+JRz6hOU1pHRXwZV/FBlnP7yCLULp+7w2SVVSn8Tl0D8laYUU6ffT49NlQVjsKdroSswgiFk80YBfdjY3ERZAdaEhHGlC8LJPOqpL8np3G4w9cR7KPHJfZEJaNrehgDAGfER4s1bLG8J1fDG+0WzJ+DAdrXenpEqhdGQGdhqLq3rjzHzq7obW6+TDyeJQ5aBAgnytzv6KUd6DdSiHVaerkNEphr8X0fDL16CcDf81QE= senibratov@debian"
  description = "ssh-keygen -t RSA 2048"
}

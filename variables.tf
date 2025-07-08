variable "secret" {
  description = "Register this value in the parameter store"
  type        = string
  sensitive   = true
  ephemeral   = true
}
variable "provider_region" {
  description = "Default region to place resources"
  type        = string
}
variable "value_wo_version" {
  description = "If change ephemeral value, please Change this version"
  type        = number
}
variable "project" {
  type = string
}
variable "username" {
  type = string
}

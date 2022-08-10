variable "create" {
  description = "Controls if resources should be created."
  type        = bool
  default     = true
}

variable "project" {
  description = "Aiven Cloud Project Name."
  type        = string
}

variable "service_name" {
  description = "Specifies the actual name of the service."
  type        = string
}

variable "database_name" {
  description = "The name of the service database."
  type        = string
}

variable "lc_collate" {
  description = "Default string sort order (LC_COLLATE) of the database."
  type        = string
  default     = "en_US.UTF-8"
}

variable "lc_ctype" {
  description = "Default character classification (LC_CTYPE) of the database."
  type        = string
  default     = "en_US.UTF-8"
}

variable "termination_protection" {
  description = "Prevents the service from being deleted."
  type        = bool
  default     = false
}
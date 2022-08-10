variable "create" {
  description = "Controls if resources should be created."
  type        = bool
  default     = true
}

variable "cloud_name" {
  description = "Defines where the cloud provider and region where the service is hosted in."
  type        = string
  default     = "aws-us-east-1"
}

variable "enable_ipv6" {
  description = "Enable IPv6."
  type        = string
  default     = "false"
}

variable "ip_filter" {
  description = "IP filter."
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "maintenance_window_dow" {
  description = "Day of week when maintenance operations should be performed. One monday, tuesday, wednesday, etc."
  type        = string
  default     = "thursday"
}

variable "maintenance_window_time" {
  description = "Time of day when maintenance operations should be performed. UTC time in HH:mm:ss format."
  type        = string
  default     = "01:00:00"
}

variable "pg_version" {
  description = "PostgreSQL major version."
  type        = string
  default     = "14"
}

variable "plan" {
  description = "Defines what kind of computing resources are allocated for the service."
  type        = string
  default     = "startup-4"
}

variable "project" {
  description = "Aiven Cloud Project Name"
  type        = string
}

variable "project_to_fork_from" {
  description = "Name of another project to fork a service from."
  type        = string
  default     = ""
}

variable "project_vpc_id" {
  description = "Specifies the VPC the service should run in. If the value is not set the service is not run inside a VPC."
  type        = string
  default     = null
}

variable "recovery_target_time" {
  description = "Recovery target time when forking a service."
  type        = string
  default     = ""
}

variable "static_ips" {
  description = "Static IPs that are going to be associated with this service."
  type        = list(string)
  default     = []
}

variable "service_name" {
  description = "Specifies the actual name of the service."
  type        = string
}

variable "service_integrations" {
  description = "List of the service integrations."
  type        = list(any)
  default     = []
}

variable "service_to_fork_from" {
  description = "Name of another service to fork from.."
  type        = string
  default     = ""
}

variable "shared_buffers_percentage" {
  description = "shared_buffers_percentage."
  type        = string
  default     = ""
}

variable "synchronous_replication" {
  description = "Synchronous replication type."
  type        = string
  default     = ""
}

variable "tags" {
  description = "List of the service tags."
  type        = list(any)
  default     = []
}

variable "termination_protection" {
  description = "Prevents the service from being deleted."
  type        = bool
  default     = false
}

variable "variant" {
  description = "Variant of the PostgreSQL service, may affect the features that are exposed by default."
  type        = string
  default     = ""
}

variable "work_mem" {
  description = "work_mem."
  type        = string
  default     = ""
}
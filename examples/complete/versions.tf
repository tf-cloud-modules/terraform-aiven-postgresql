terraform {
  required_version = ">= 0.13.1"

  required_providers {
    aiven = {
      source  = "aiven/aiven"
      version = ">= 4.62.0, < 5.0.0"
    }
  }
}

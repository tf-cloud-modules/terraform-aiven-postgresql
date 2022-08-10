output "id" {
  description = "The ID of this resource."
  value       = try(aiven_pg_user.this[0].id, "")
}

output "project" {
  description = "Aiven Cloud Project Name."
  value       = try(aiven_pg_user.this[0].project, "")
}

output "service_name" {
  description = "Specifies the actual name of the service."
  value       = try(aiven_pg_user.this[0].service_name, "")
}

output "username" {
  description = "The actual name of the PG User."
  value       = try(aiven_pg_user.this[0].username, "")
}

output "access_cert" {
  description = "Access certificate for the user."
  sensitive   = true
  value       = try(aiven_pg_user.this[0].access_cert, "")
}

output "access_key" {
  description = "Access certificate key for the user."
  sensitive   = true
  value       = try(aiven_pg_user.this[0].access_key, "")
}

output "password" {
  description = "The password of the PG User."
  sensitive   = true
  value       = try(aiven_pg_user.this[0].password, "")
}

output "pg_allow_replication" {
  description = "Defines whether replication is allowed."
  value       = try(aiven_pg_user.this[0].pg_allow_replication, "")
}
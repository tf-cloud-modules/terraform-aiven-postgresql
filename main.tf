resource "aiven_pg" "this" {
  count                   = var.create ? 1 : 0
  cloud_name              = var.cloud_name
  maintenance_window_dow  = var.maintenance_window_dow
  maintenance_window_time = var.maintenance_window_time
  plan                    = var.plan
  project                 = var.project
  project_vpc_id          = var.project_vpc_id
  static_ips              = var.static_ips
  service_name            = var.service_name
  termination_protection  = var.termination_protection

  pg_user_config {
    enable_ipv6               = var.enable_ipv6
    ip_filter                 = var.ip_filter
    pg_version                = var.pg_version
    project_to_fork_from      = var.project_to_fork_from
    recovery_target_time      = var.recovery_target_time
    service_to_fork_from      = var.service_to_fork_from
    shared_buffers_percentage = var.shared_buffers_percentage
    synchronous_replication   = var.synchronous_replication
    variant                   = var.variant
    work_mem                  = var.work_mem
  }

  dynamic "service_integrations" {
    for_each = var.service_integrations
    content {
      integration_type    = lookup(service_integrations.value, "integration_type", null)
      source_service_name = lookup(service_integrations.value, "source_service_name", null)
    }
  }

  dynamic "tag" {
    for_each = var.tags
    content {
      key   = lookup(service_integrations.value, "key", null)
      value = lookup(service_integrations.value, "value", null)
    }
  }
}
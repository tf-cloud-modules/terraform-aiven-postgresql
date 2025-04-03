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

    dynamic "migration" {
      for_each = var.migration
      content {
        dbname     = lookup(migration.value, "dbname", null)
        host       = lookup(migration.value, "host", null)
        ignore_dbs = lookup(migration.value, "ignore_dbs", null)
        method     = lookup(migration.value, "method", null)
        password   = lookup(migration.value, "password", null)
        port       = lookup(migration.value, "port", null)
        ssl        = lookup(migration.value, "ssl", null)
        username   = lookup(migration.value, "username", null)
      }
    }

    pg {
      autovacuum_analyze_scale_factor     = var.autovacuum_analyze_scale_factor
      autovacuum_analyze_threshold        = var.autovacuum_analyze_threshold
      autovacuum_freeze_max_age           = var.autovacuum_freeze_max_age
      autovacuum_max_workers              = var.autovacuum_max_workers
      autovacuum_naptime                  = var.autovacuum_naptime
      autovacuum_vacuum_cost_delay        = var.autovacuum_vacuum_cost_delay
      autovacuum_vacuum_cost_limit        = var.autovacuum_vacuum_cost_limit
      autovacuum_vacuum_scale_factor      = var.autovacuum_vacuum_scale_factor
      autovacuum_vacuum_threshold         = var.autovacuum_vacuum_threshold
      bgwriter_delay                      = var.bgwriter_delay
      bgwriter_flush_after                = var.bgwriter_flush_after
      bgwriter_lru_maxpages               = var.bgwriter_lru_maxpages
      bgwriter_lru_multiplier             = var.bgwriter_lru_multiplier
      deadlock_timeout                    = var.deadlock_timeout
      default_toast_compression           = var.default_toast_compression
      idle_in_transaction_session_timeout = var.idle_in_transaction_session_timeout
      jit                                 = var.jit
      log_autovacuum_min_duration         = var.log_autovacuum_min_duration
      log_error_verbosity                 = var.log_error_verbosity
      log_line_prefix                     = var.log_line_prefix
      log_min_duration_statement          = var.log_min_duration_statement
      max_files_per_process               = var.max_files_per_process
      max_locks_per_transaction           = var.max_locks_per_transaction
      max_logical_replication_workers     = var.max_logical_replication_workers
      max_parallel_workers                = var.max_parallel_workers
      max_parallel_workers_per_gather     = var.max_parallel_workers_per_gather
      max_pred_locks_per_transaction      = var.max_pred_locks_per_transaction
      max_prepared_transactions           = var.max_prepared_transactions
      max_replication_slots               = var.max_replication_slots
      max_slot_wal_keep_size              = var.max_slot_wal_keep_size
      max_stack_depth                     = var.max_stack_depth
      max_standby_archive_delay           = var.max_standby_archive_delay
      max_standby_streaming_delay         = var.max_standby_streaming_delay
      max_wal_senders                     = var.max_wal_senders
      max_worker_processes                = var.max_worker_processes
      pg_partman_bgw__dot__interval       = var.pg_partman_bgw__dot__interval
      pg_partman_bgw__dot__role           = var.pg_partman_bgw__dot__role
      pg_stat_statements__dot__track      = var.pg_stat_statements__dot__track
      temp_file_limit                     = var.temp_file_limit
      timezone                            = var.timezone
      track_activity_query_size           = var.track_activity_query_size
      track_commit_timestamp              = var.track_commit_timestamp
      track_functions                     = var.track_functions
      track_io_timing                     = var.track_io_timing
      wal_sender_timeout                  = var.wal_sender_timeout
      wal_writer_delay                    = var.wal_writer_delay
    }

    pgbouncer {
      autodb_idle_timeout       = var.autodb_idle_timeout
      autodb_max_db_connections = var.autodb_max_db_connections
      autodb_pool_mode          = var.autodb_pool_mode
      autodb_pool_size          = var.autodb_pool_size
      ignore_startup_parameters = var.ignore_startup_parameters
      min_pool_size             = var.min_pool_size
      server_idle_timeout       = var.server_idle_timeout
      server_lifetime           = var.server_lifetime
      server_reset_query_always = var.server_reset_query_always
    }

    pglookout {
      max_failover_replication_time_lag = var.max_failover_replication_time_lag
    }

    public_access {
      prometheus = var.public_access_prometheus
      pg         = var.public_access_pg
      pgbouncer  = var.public_access_pgbouncer
    }

    private_access {
      prometheus = var.private_access_prometheus
      pg         = var.private_access_pg
      pgbouncer  = var.private_access_pgbouncer
    }

    privatelink_access {
      prometheus = var.privatelink_prometheus
      pg         = var.privatelink_pg
      pgbouncer  = var.privatelink_pgbouncer
    }

    timescaledb {
      max_background_workers = var.max_background_workers
    }
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
      key   = lookup(tag.value, "key", null)
      value = lookup(tag.value, "value", null)
    }
  }

  lifecycle {
    # We are ignoring a migration block to it's one-off nature.
    ignore_changes = [pg_user_config[0].migration[0]]
  }
}

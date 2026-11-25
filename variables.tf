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

variable "backup_interval_hours" {
  description = "Interval in hours between automatic backups. Must be a divisor of 24 (3, 4, 6, 8, 12, 24). Applicable to ACU plans only."
  type        = number
  default     = null
}

variable "backup_retention_days" {
  description = "Number of days to retain automatic backups. Backups older than this value will be automatically deleted. Applicable to ACU plans only."
  type        = number
  default     = null
}

variable "cmk_id" {
  description = "UUID of the Customer Managed Key (CMK) used to apply bring your own key (BYOK) encryption to this service's data at rest."
  type        = string
  default     = null
}

variable "enable_ha_replica_dns" {
  description = "Creates a dedicated read-only DNS that automatically falls back to the primary if standby nodes are unavailable."
  type        = bool
  default     = null
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

variable "ip_filter_string" {
  description = "Allow incoming connections from CIDR address block, e.g. `10.20.0.0/16`."
  type        = list(string)
  default     = []
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

variable "node_count" {
  description = "Number of nodes for the service."
  type        = number
  default     = null
}

variable "pg_stat_plans_enable" {
  description = "Enable the pg_stat_plans extension to track execution plans for SQL queries. Changing this parameter causes a service restart."
  type        = bool
  default     = null
}

variable "pg_version" {
  description = "PostgreSQL major version."
  type        = string
  default     = "18"
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
  default     = null
}

variable "project_vpc_id" {
  description = "Specifies the VPC the service should run in. If the value is not set the service is not run inside a VPC."
  type        = string
  default     = null
}

variable "recovery_target_time" {
  description = "Recovery target time when forking a service."
  type        = string
  default     = null
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

variable "service_log" {
  description = "Store logs for the service so that they are available in the HTTP API and console."
  type        = bool
  default     = null
}

variable "service_to_fork_from" {
  description = "Name of another service to fork from."
  type        = string
  default     = null
}

variable "shared_buffers_percentage" {
  description = "shared_buffers_percentage."
  type        = number
  default     = null
}

variable "synchronous_replication" {
  description = "Synchronous replication type."
  type        = string
  default     = null
}

variable "switchover_windows" {
  description = "List of switchover windows for planned primary/standby role switches. Each item supports `dow` (day of week), `start_time` and `end_time` in HH:mm:ss format."
  type        = list(any)
  default     = []
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
  default     = null
}

variable "work_mem" {
  description = "work_mem"
  type        = number
  default     = null
}

variable "autovacuum_analyze_scale_factor" {
  description = "autovacuum_analyze_scale_factor"
  type        = number
  default     = null
}

variable "autovacuum_analyze_threshold" {
  description = "autovacuum_analyze_threshold"
  type        = number
  default     = null
}

variable "autovacuum_freeze_max_age" {
  description = "autovacuum_freeze_max_age"
  type        = number
  default     = null
}

variable "autovacuum_max_workers" {
  description = "autovacuum_max_workers"
  type        = number
  default     = null
}

variable "autovacuum_naptime" {
  description = "autovacuum_naptime"
  type        = number
  default     = null
}

variable "autovacuum_vacuum_cost_delay" {
  description = "autovacuum_vacuum_cost_delay"
  type        = number
  default     = null
}

variable "autovacuum_vacuum_cost_limit" {
  description = "autovacuum_vacuum_cost_limit"
  type        = number
  default     = null
}

variable "autovacuum_vacuum_scale_factor" {
  description = "autovacuum_vacuum_scale_factor"
  type        = number
  default     = null
}

variable "autovacuum_vacuum_threshold" {
  description = "autovacuum_vacuum_threshold"
  type        = number
  default     = null
}

variable "bgwriter_delay" {
  description = "bgwriter_delay"
  type        = number
  default     = null
}

variable "bgwriter_flush_after" {
  description = "bgwriter_flush_after"
  type        = number
  default     = null
}

variable "bgwriter_lru_maxpages" {
  description = "bgwriter_lru_maxpages"
  type        = number
  default     = null
}

variable "bgwriter_lru_multiplier" {
  description = "bgwriter_lru_multiplier"
  type        = number
  default     = null
}

variable "deadlock_timeout" {
  description = "deadlock_timeout"
  type        = number
  default     = null
}

variable "default_toast_compression" {
  description = "default_toast_compression"
  type        = string
  default     = null
}

variable "idle_in_transaction_session_timeout" {
  description = "idle_in_transaction_session_timeout"
  type        = number
  default     = null
}

variable "io_combine_limit" {
  description = "EXPERIMENTAL: Controls the largest I/O size in operations that combine I/O in 8kB units. PostgreSQL 17 and up only."
  type        = number
  default     = null
}

variable "io_max_combine_limit" {
  description = "EXPERIMENTAL: Controls the largest I/O size in operations that combine I/O in 8kB units, and silently limits the user-settable parameter io_combine_limit. PostgreSQL 18 and up only. Changing this parameter causes a service restart."
  type        = number
  default     = null
}

variable "io_max_concurrency" {
  description = "EXPERIMENTAL: Controls the maximum number of I/O operations that one process can execute simultaneously. PostgreSQL 18 and up only. Changing this parameter causes a service restart."
  type        = number
  default     = null
}

variable "io_method" {
  description = "EXPERIMENTAL: Controls the way that data files are accessed. One of `worker`, `io_uring`, `sync`. PostgreSQL 18 and up only. Changing this parameter causes a service restart."
  type        = string
  default     = null
}

variable "io_workers" {
  description = "EXPERIMENTAL: Number of IO worker processes, for io_method=worker. PostgreSQL 18 and up only."
  type        = number
  default     = null
}

variable "jit" {
  description = "jit"
  type        = bool
  default     = null
}

variable "log_autovacuum_min_duration" {
  description = "log_autovacuum_min_duration"
  type        = number
  default     = null
}

variable "log_error_verbosity" {
  description = "log_error_verbosity"
  type        = string
  default     = null
}

variable "log_line_prefix" {
  description = "log_line_prefix"
  type        = string
  default     = null
}

variable "log_min_duration_statement" {
  description = "log_min_duration_statement"
  type        = number
  default     = null
}

variable "max_connections" {
  description = "Sets the PostgreSQL maximum number of concurrent connections to the database server. Changing this parameter causes a service restart."
  type        = number
  default     = null
}

variable "max_files_per_process" {
  description = "max_files_per_process"
  type        = number
  default     = null
}

variable "max_locks_per_transaction" {
  description = "max_locks_per_transaction"
  type        = number
  default     = null
}

variable "max_logical_replication_workers" {
  description = "max_logical_replication_workers"
  type        = number
  default     = null
}

variable "max_parallel_workers" {
  description = "max_parallel_workers"
  type        = number
  default     = null
}

variable "max_parallel_workers_per_gather" {
  description = "max_parallel_workers_per_gather"
  type        = number
  default     = null
}

variable "max_pred_locks_per_transaction" {
  description = "max_pred_locks_per_transaction"
  type        = number
  default     = null
}

variable "max_prepared_transactions" {
  description = "max_prepared_transactions"
  type        = number
  default     = null
}

variable "max_replication_slots" {
  description = "max_replication_slots"
  type        = number
  default     = null
}

variable "max_slot_wal_keep_size" {
  description = "max_slot_wal_keep_size"
  type        = number
  default     = null
}

variable "max_stack_depth" {
  description = "max_stack_depth"
  type        = number
  default     = null
}

variable "max_standby_archive_delay" {
  description = "max_standby_archive_delay"
  type        = number
  default     = null
}

variable "max_standby_streaming_delay" {
  description = "max_standby_streaming_delay"
  type        = number
  default     = null
}

variable "max_sync_workers_per_subscription" {
  description = "Maximum number of synchronization workers per subscription."
  type        = number
  default     = null
}

variable "max_wal_senders" {
  description = "max_wal_senders"
  type        = number
  default     = null
}

variable "max_worker_processes" {
  description = "max_worker_processes"
  type        = number
  default     = null
}

variable "password_encryption" {
  description = "Chooses the algorithm for encrypting passwords. One of `md5`, `scram-sha-256`."
  type        = string
  default     = null
}

variable "pg_partman_bgw__dot__interval" {
  description = "pg_partman_bgw__dot__interval"
  type        = number
  default     = null
}

variable "pg_partman_bgw__dot__role" {
  description = ""
  type        = string
  default     = null
}

variable "pg_stat_plans__dot__track" {
  description = "Controls which statements' plans are tracked by pg_stat_plans. One of `top`, `all`, `none`."
  type        = string
  default     = null
}

variable "pg_stat_statements__dot__track" {
  description = "pg_stat_statements__dot__track"
  type        = string
  default     = null
}

variable "synchronous_commit" {
  description = "Sets the current transaction's synchronization level. One of `off`, `local`, `remote_write`, `remote_apply`, `on`. Takes precedence over `synchronous_replication`."
  type        = string
  default     = null
}

variable "temp_file_limit" {
  description = "temp_file_limit"
  type        = number
  default     = null
}

variable "timezone" {
  description = "timezone"
  type        = string
  default     = null
}

variable "track_activity_query_size" {
  description = "track_activity_query_size"
  type        = number
  default     = null
}

variable "track_commit_timestamp" {
  description = "track_commit_timestamp"
  type        = string
  default     = null
}

variable "track_functions" {
  description = "track_functions"
  type        = string
  default     = null
}

variable "track_io_timing" {
  description = "track_io_timing"
  type        = string
  default     = null
}

variable "wal_sender_timeout" {
  description = "wal_sender_timeout"
  type        = number
  default     = null
}

variable "wal_writer_delay" {
  description = "wal_writer_delay"
  type        = number
  default     = null
}

variable "pgaudit_feature_enabled" {
  description = "Enable pgaudit extension. When enabled, pgaudit extension will be automatically installed. Otherwise, extension will be uninstalled but auditing configurations will be preserved."
  type        = bool
  default     = null
}

variable "pgaudit_log" {
  description = "Specifies which classes of statements will be logged by session audit logging."
  type        = list(string)
  default     = []
}

variable "pgaudit_log_catalog" {
  description = "Specifies that session logging should be enabled in the case where all relations in a statement are in pg_catalog."
  type        = bool
  default     = null
}

variable "pgaudit_log_client" {
  description = "Specifies whether log messages will be visible to a client process such as psql."
  type        = bool
  default     = null
}

variable "pgaudit_log_level" {
  description = "Specifies the log level that will be used for log entries. One of `debug1`-`debug5`, `info`, `log`, `notice`, `warning`."
  type        = string
  default     = null
}

variable "pgaudit_log_max_string_length" {
  description = "Crop parameters representation and whole statements if they exceed this threshold. A (default) value of -1 disable the truncation."
  type        = number
  default     = null
}

variable "pgaudit_log_nested_statements" {
  description = "This GUC allows to turn off logging nested statements, that is, statements that are executed as part of another ExecutorRun."
  type        = bool
  default     = null
}

variable "pgaudit_log_parameter" {
  description = "Specifies that audit logging should include the parameters that were passed with the statement."
  type        = bool
  default     = null
}

variable "pgaudit_log_parameter_max_size" {
  description = "Specifies that parameter values longer than this setting (in bytes) should not be logged, but replaced with <long param suppressed>."
  type        = number
  default     = null
}

variable "pgaudit_log_relation" {
  description = "Specifies whether session audit logging should create a separate log entry for each relation (TABLE, VIEW, etc.) referenced in a SELECT or DML statement."
  type        = bool
  default     = null
}

variable "pgaudit_log_rows" {
  description = "Log Rows."
  type        = bool
  default     = null
}

variable "pgaudit_log_statement" {
  description = "Specifies whether logging will include the statement text and parameters (if enabled)."
  type        = bool
  default     = null
}

variable "pgaudit_log_statement_once" {
  description = "Specifies whether logging will include the statement text and parameters with the first log entry for a statement/substatement combination or with every entry."
  type        = bool
  default     = null
}

variable "pgaudit_role" {
  description = "Specifies the master role to use for object audit logging."
  type        = string
  default     = null
}

variable "autodb_idle_timeout" {
  description = "autodb_idle_timeout"
  type        = number
  default     = null
}

variable "autodb_max_db_connections" {
  description = "autodb_max_db_connections"
  type        = number
  default     = null
}

variable "autodb_pool_mode" {
  description = "autodb_pool_mode"
  type        = string
  default     = null
}

variable "autodb_pool_size" {
  description = "autodb_pool_size"
  type        = number
  default     = null
}

variable "ignore_startup_parameters" {
  description = "ignore_startup_parameters"
  type        = list(string)
  default     = []
}

variable "max_prepared_statements" {
  description = "PgBouncer tracks protocol-level named prepared statements related commands sent by the client in transaction and statement pooling modes when set to a non-zero value. Setting it to 0 disables prepared statements."
  type        = number
  default     = null
}

variable "min_pool_size" {
  description = "min_pool_size"
  type        = number
  default     = null
}

variable "server_connect_timeout" {
  description = "If connection and login don't finish in this amount of time, the connection will be closed. In seconds."
  type        = number
  default     = null
}

variable "server_idle_timeout" {
  description = "server_idle_timeout"
  type        = number
  default     = null
}

variable "server_lifetime" {
  description = "server_lifetime"
  type        = number
  default     = null
}

variable "server_login_retry" {
  description = "If login to the server failed, because of failure to connect or from authentication, the pooler waits this much before retrying to connect. In seconds."
  type        = number
  default     = null
}

variable "server_reset_query_always" {
  description = "server_reset_query_always"
  type        = bool
  default     = null
}

variable "max_failover_replication_time_lag" {
  description = "max_failover_replication_time_lag"
  type        = number
  default     = null
}

variable "pg_qualstats_enabled" {
  description = "Enable / Disable pg_qualstats."
  type        = bool
  default     = null
}

variable "pg_qualstats_min_err_estimate_num" {
  description = "Error estimation num threshold to save quals."
  type        = number
  default     = null
}

variable "pg_qualstats_min_err_estimate_ratio" {
  description = "Error estimation ratio threshold to save quals."
  type        = number
  default     = null
}

variable "pg_qualstats_track_constants" {
  description = "Enable / Disable pg_qualstats constants tracking."
  type        = bool
  default     = null
}

variable "pg_qualstats_track_pg_catalog" {
  description = "Track quals on system catalogs too."
  type        = bool
  default     = null
}

variable "public_access_prometheus" {
  description = "Allow clients to connect to prometheus from the public internet for service nodes that are in a project VPC or another type of private network."
  type        = bool
  default     = false
}

variable "public_access_pg" {
  description = "Allow clients to connect to pg from the public internet for service nodes that are in a project VPC or another type of private network."
  type        = bool
  default     = false
}

variable "public_access_pgbouncer" {
  description = "Allow clients to connect to pgbouncer from the public internet for service nodes that are in a project VPC or another type of private network."
  type        = bool
  default     = false
}

variable "private_access_prometheus" {
  description = "Allow clients to connect to prometheus with a DNS name that always resolves to the service's private IP addresses."
  type        = bool
  default     = false
}

variable "private_access_pg" {
  description = "Allow clients to connect to pg with a DNS name that always resolves to the service's private IP addresses."
  type        = bool
  default     = false
}

variable "private_access_pgbouncer" {
  description = "Allow clients to connect to pgbouncer with a DNS name that always resolves to the service's private IP addresses."
  type        = bool
  default     = false
}

variable "privatelink_prometheus" {
  description = "Enable prometheus."
  type        = bool
  default     = false
}

variable "privatelink_pg" {
  description = "Enable pg."
  type        = bool
  default     = false
}

variable "privatelink_pgbouncer" {
  description = "Enable pgbouncer."
  type        = bool
  default     = false
}

variable "max_background_workers" {
  description = "timescaledb.max_background_workers"
  type        = number
  default     = null
}

variable "migration" {
  description = "Migrate data from existing server."
  type        = list(any)
  default     = []
}

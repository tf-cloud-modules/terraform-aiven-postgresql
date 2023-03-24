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
  description = "Name of another service to fork from."
  type        = string
  default     = ""
}

variable "shared_buffers_percentage" {
  description = "shared_buffers_percentage."
  type        = number
  default     = null
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
  default     = ""
}

variable "idle_in_transaction_session_timeout" {
  description = "idle_in_transaction_session_timeout"
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
  default     = ""
}

variable "log_line_prefix" {
  description = "log_line_prefix"
  type        = string
  default     = ""
}

variable "log_min_duration_statement" {
  description = "log_min_duration_statement"
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

variable "pg_partman_bgw__dot__interval" {
  description = "pg_partman_bgw__dot__interval"
  type        = number
  default     = null
}

variable "pg_partman_bgw__dot__role" {
  description = ""
  type        = string
  default     = ""
}

variable "pg_stat_statements__dot__track" {
  description = "pg_stat_statements__dot__track"
  type        = string
  default     = ""
}

variable "temp_file_limit" {
  description = "temp_file_limit"
  type        = number
  default     = null
}

variable "timezone" {
  description = "timezone"
  type        = string
  default     = ""
}

variable "track_activity_query_size" {
  description = "track_activity_query_size"
  type        = number
  default     = null
}

variable "track_commit_timestamp" {
  description = "track_commit_timestamp"
  type        = string
  default     = ""
}

variable "track_functions" {
  description = "track_functions"
  type        = string
  default     = ""
}

variable "track_io_timing" {
  description = "track_io_timing"
  type        = string
  default     = ""
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
  default     = ""
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

variable "min_pool_size" {
  description = "min_pool_size"
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
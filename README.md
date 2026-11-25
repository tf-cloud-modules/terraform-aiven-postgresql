**English** | [Русский](README.ru.md)

# Aiven PostgreSQL Terraform module

Terraform module which creates Aiven PostgreSQL resources

## Usage

```hcl
module "postgresql" {
  source       = "tf-cloud-modules/postgresql/aiven"
  project      = "test"
  service_name = "test"
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
| ---- | ------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_aiven"></a> [aiven](#requirement\_aiven) | >= 4.62.0, < 5.0.0 |

## Providers

| Name | Version |
| ---- | ------- |
| <a name="provider_aiven"></a> [aiven](#provider\_aiven) | >= 4.62.0, < 5.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
| ---- | ---- |
| [aiven_pg.this](https://registry.terraform.io/providers/aiven/aiven/latest/docs/resources/pg) | resource |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_autodb_idle_timeout"></a> [autodb\_idle\_timeout](#input\_autodb\_idle\_timeout) | autodb\_idle\_timeout | `number` | `null` | no |
| <a name="input_autodb_max_db_connections"></a> [autodb\_max\_db\_connections](#input\_autodb\_max\_db\_connections) | autodb\_max\_db\_connections | `number` | `null` | no |
| <a name="input_autodb_pool_mode"></a> [autodb\_pool\_mode](#input\_autodb\_pool\_mode) | autodb\_pool\_mode | `string` | `null` | no |
| <a name="input_autodb_pool_size"></a> [autodb\_pool\_size](#input\_autodb\_pool\_size) | autodb\_pool\_size | `number` | `null` | no |
| <a name="input_autovacuum_analyze_scale_factor"></a> [autovacuum\_analyze\_scale\_factor](#input\_autovacuum\_analyze\_scale\_factor) | autovacuum\_analyze\_scale\_factor | `number` | `null` | no |
| <a name="input_autovacuum_analyze_threshold"></a> [autovacuum\_analyze\_threshold](#input\_autovacuum\_analyze\_threshold) | autovacuum\_analyze\_threshold | `number` | `null` | no |
| <a name="input_autovacuum_freeze_max_age"></a> [autovacuum\_freeze\_max\_age](#input\_autovacuum\_freeze\_max\_age) | autovacuum\_freeze\_max\_age | `number` | `null` | no |
| <a name="input_autovacuum_max_workers"></a> [autovacuum\_max\_workers](#input\_autovacuum\_max\_workers) | autovacuum\_max\_workers | `number` | `null` | no |
| <a name="input_autovacuum_naptime"></a> [autovacuum\_naptime](#input\_autovacuum\_naptime) | autovacuum\_naptime | `number` | `null` | no |
| <a name="input_autovacuum_vacuum_cost_delay"></a> [autovacuum\_vacuum\_cost\_delay](#input\_autovacuum\_vacuum\_cost\_delay) | autovacuum\_vacuum\_cost\_delay | `number` | `null` | no |
| <a name="input_autovacuum_vacuum_cost_limit"></a> [autovacuum\_vacuum\_cost\_limit](#input\_autovacuum\_vacuum\_cost\_limit) | autovacuum\_vacuum\_cost\_limit | `number` | `null` | no |
| <a name="input_autovacuum_vacuum_scale_factor"></a> [autovacuum\_vacuum\_scale\_factor](#input\_autovacuum\_vacuum\_scale\_factor) | autovacuum\_vacuum\_scale\_factor | `number` | `null` | no |
| <a name="input_autovacuum_vacuum_threshold"></a> [autovacuum\_vacuum\_threshold](#input\_autovacuum\_vacuum\_threshold) | autovacuum\_vacuum\_threshold | `number` | `null` | no |
| <a name="input_backup_interval_hours"></a> [backup\_interval\_hours](#input\_backup\_interval\_hours) | Interval in hours between automatic backups. Must be a divisor of 24 (3, 4, 6, 8, 12, 24). Applicable to ACU plans only. | `number` | `null` | no |
| <a name="input_backup_retention_days"></a> [backup\_retention\_days](#input\_backup\_retention\_days) | Number of days to retain automatic backups. Backups older than this value will be automatically deleted. Applicable to ACU plans only. | `number` | `null` | no |
| <a name="input_bgwriter_delay"></a> [bgwriter\_delay](#input\_bgwriter\_delay) | bgwriter\_delay | `number` | `null` | no |
| <a name="input_bgwriter_flush_after"></a> [bgwriter\_flush\_after](#input\_bgwriter\_flush\_after) | bgwriter\_flush\_after | `number` | `null` | no |
| <a name="input_bgwriter_lru_maxpages"></a> [bgwriter\_lru\_maxpages](#input\_bgwriter\_lru\_maxpages) | bgwriter\_lru\_maxpages | `number` | `null` | no |
| <a name="input_bgwriter_lru_multiplier"></a> [bgwriter\_lru\_multiplier](#input\_bgwriter\_lru\_multiplier) | bgwriter\_lru\_multiplier | `number` | `null` | no |
| <a name="input_cloud_name"></a> [cloud\_name](#input\_cloud\_name) | Defines where the cloud provider and region where the service is hosted in. | `string` | `"aws-us-east-1"` | no |
| <a name="input_cmk_id"></a> [cmk\_id](#input\_cmk\_id) | UUID of the Customer Managed Key (CMK) used to apply bring your own key (BYOK) encryption to this service's data at rest. | `string` | `null` | no |
| <a name="input_create"></a> [create](#input\_create) | Controls if resources should be created. | `bool` | `true` | no |
| <a name="input_deadlock_timeout"></a> [deadlock\_timeout](#input\_deadlock\_timeout) | deadlock\_timeout | `number` | `null` | no |
| <a name="input_default_toast_compression"></a> [default\_toast\_compression](#input\_default\_toast\_compression) | default\_toast\_compression | `string` | `null` | no |
| <a name="input_enable_ha_replica_dns"></a> [enable\_ha\_replica\_dns](#input\_enable\_ha\_replica\_dns) | Creates a dedicated read-only DNS that automatically falls back to the primary if standby nodes are unavailable. | `bool` | `null` | no |
| <a name="input_enable_ipv6"></a> [enable\_ipv6](#input\_enable\_ipv6) | Enable IPv6. | `string` | `"false"` | no |
| <a name="input_idle_in_transaction_session_timeout"></a> [idle\_in\_transaction\_session\_timeout](#input\_idle\_in\_transaction\_session\_timeout) | idle\_in\_transaction\_session\_timeout | `number` | `null` | no |
| <a name="input_ignore_startup_parameters"></a> [ignore\_startup\_parameters](#input\_ignore\_startup\_parameters) | ignore\_startup\_parameters | `list(string)` | `[]` | no |
| <a name="input_io_combine_limit"></a> [io\_combine\_limit](#input\_io\_combine\_limit) | EXPERIMENTAL: Controls the largest I/O size in operations that combine I/O in 8kB units. PostgreSQL 17 and up only. | `number` | `null` | no |
| <a name="input_io_max_combine_limit"></a> [io\_max\_combine\_limit](#input\_io\_max\_combine\_limit) | EXPERIMENTAL: Controls the largest I/O size in operations that combine I/O in 8kB units, and silently limits the user-settable parameter io\_combine\_limit. PostgreSQL 18 and up only. Changing this parameter causes a service restart. | `number` | `null` | no |
| <a name="input_io_max_concurrency"></a> [io\_max\_concurrency](#input\_io\_max\_concurrency) | EXPERIMENTAL: Controls the maximum number of I/O operations that one process can execute simultaneously. PostgreSQL 18 and up only. Changing this parameter causes a service restart. | `number` | `null` | no |
| <a name="input_io_method"></a> [io\_method](#input\_io\_method) | EXPERIMENTAL: Controls the way that data files are accessed. One of `worker`, `io_uring`, `sync`. PostgreSQL 18 and up only. Changing this parameter causes a service restart. | `string` | `null` | no |
| <a name="input_io_workers"></a> [io\_workers](#input\_io\_workers) | EXPERIMENTAL: Number of IO worker processes, for io\_method=worker. PostgreSQL 18 and up only. | `number` | `null` | no |
| <a name="input_ip_filter"></a> [ip\_filter](#input\_ip\_filter) | IP filter. | `list(string)` | <pre>[<br/>  "0.0.0.0/0"<br/>]</pre> | no |
| <a name="input_ip_filter_string"></a> [ip\_filter\_string](#input\_ip\_filter\_string) | Allow incoming connections from CIDR address block, e.g. `10.20.0.0/16`. | `list(string)` | `[]` | no |
| <a name="input_jit"></a> [jit](#input\_jit) | jit | `bool` | `null` | no |
| <a name="input_log_autovacuum_min_duration"></a> [log\_autovacuum\_min\_duration](#input\_log\_autovacuum\_min\_duration) | log\_autovacuum\_min\_duration | `number` | `null` | no |
| <a name="input_log_error_verbosity"></a> [log\_error\_verbosity](#input\_log\_error\_verbosity) | log\_error\_verbosity | `string` | `null` | no |
| <a name="input_log_line_prefix"></a> [log\_line\_prefix](#input\_log\_line\_prefix) | log\_line\_prefix | `string` | `null` | no |
| <a name="input_log_min_duration_statement"></a> [log\_min\_duration\_statement](#input\_log\_min\_duration\_statement) | log\_min\_duration\_statement | `number` | `null` | no |
| <a name="input_maintenance_window_dow"></a> [maintenance\_window\_dow](#input\_maintenance\_window\_dow) | Day of week when maintenance operations should be performed. One monday, tuesday, wednesday, etc. | `string` | `"thursday"` | no |
| <a name="input_maintenance_window_time"></a> [maintenance\_window\_time](#input\_maintenance\_window\_time) | Time of day when maintenance operations should be performed. UTC time in HH:mm:ss format. | `string` | `"01:00:00"` | no |
| <a name="input_max_background_workers"></a> [max\_background\_workers](#input\_max\_background\_workers) | timescaledb.max\_background\_workers | `number` | `null` | no |
| <a name="input_max_connections"></a> [max\_connections](#input\_max\_connections) | Sets the PostgreSQL maximum number of concurrent connections to the database server. Changing this parameter causes a service restart. | `number` | `null` | no |
| <a name="input_max_failover_replication_time_lag"></a> [max\_failover\_replication\_time\_lag](#input\_max\_failover\_replication\_time\_lag) | max\_failover\_replication\_time\_lag | `number` | `null` | no |
| <a name="input_max_files_per_process"></a> [max\_files\_per\_process](#input\_max\_files\_per\_process) | max\_files\_per\_process | `number` | `null` | no |
| <a name="input_max_locks_per_transaction"></a> [max\_locks\_per\_transaction](#input\_max\_locks\_per\_transaction) | max\_locks\_per\_transaction | `number` | `null` | no |
| <a name="input_max_logical_replication_workers"></a> [max\_logical\_replication\_workers](#input\_max\_logical\_replication\_workers) | max\_logical\_replication\_workers | `number` | `null` | no |
| <a name="input_max_parallel_workers"></a> [max\_parallel\_workers](#input\_max\_parallel\_workers) | max\_parallel\_workers | `number` | `null` | no |
| <a name="input_max_parallel_workers_per_gather"></a> [max\_parallel\_workers\_per\_gather](#input\_max\_parallel\_workers\_per\_gather) | max\_parallel\_workers\_per\_gather | `number` | `null` | no |
| <a name="input_max_pred_locks_per_transaction"></a> [max\_pred\_locks\_per\_transaction](#input\_max\_pred\_locks\_per\_transaction) | max\_pred\_locks\_per\_transaction | `number` | `null` | no |
| <a name="input_max_prepared_statements"></a> [max\_prepared\_statements](#input\_max\_prepared\_statements) | PgBouncer tracks protocol-level named prepared statements related commands sent by the client in transaction and statement pooling modes when set to a non-zero value. Setting it to 0 disables prepared statements. | `number` | `null` | no |
| <a name="input_max_prepared_transactions"></a> [max\_prepared\_transactions](#input\_max\_prepared\_transactions) | max\_prepared\_transactions | `number` | `null` | no |
| <a name="input_max_replication_slots"></a> [max\_replication\_slots](#input\_max\_replication\_slots) | max\_replication\_slots | `number` | `null` | no |
| <a name="input_max_slot_wal_keep_size"></a> [max\_slot\_wal\_keep\_size](#input\_max\_slot\_wal\_keep\_size) | max\_slot\_wal\_keep\_size | `number` | `null` | no |
| <a name="input_max_stack_depth"></a> [max\_stack\_depth](#input\_max\_stack\_depth) | max\_stack\_depth | `number` | `null` | no |
| <a name="input_max_standby_archive_delay"></a> [max\_standby\_archive\_delay](#input\_max\_standby\_archive\_delay) | max\_standby\_archive\_delay | `number` | `null` | no |
| <a name="input_max_standby_streaming_delay"></a> [max\_standby\_streaming\_delay](#input\_max\_standby\_streaming\_delay) | max\_standby\_streaming\_delay | `number` | `null` | no |
| <a name="input_max_sync_workers_per_subscription"></a> [max\_sync\_workers\_per\_subscription](#input\_max\_sync\_workers\_per\_subscription) | Maximum number of synchronization workers per subscription. | `number` | `null` | no |
| <a name="input_max_wal_senders"></a> [max\_wal\_senders](#input\_max\_wal\_senders) | max\_wal\_senders | `number` | `null` | no |
| <a name="input_max_worker_processes"></a> [max\_worker\_processes](#input\_max\_worker\_processes) | max\_worker\_processes | `number` | `null` | no |
| <a name="input_migration"></a> [migration](#input\_migration) | Migrate data from existing server. | `list(any)` | `[]` | no |
| <a name="input_min_pool_size"></a> [min\_pool\_size](#input\_min\_pool\_size) | min\_pool\_size | `number` | `null` | no |
| <a name="input_node_count"></a> [node\_count](#input\_node\_count) | Number of nodes for the service. | `number` | `null` | no |
| <a name="input_password_encryption"></a> [password\_encryption](#input\_password\_encryption) | Chooses the algorithm for encrypting passwords. One of `md5`, `scram-sha-256`. | `string` | `null` | no |
| <a name="input_pg_partman_bgw__dot__interval"></a> [pg\_partman\_bgw\_\_dot\_\_interval](#input\_pg\_partman\_bgw\_\_dot\_\_interval) | pg\_partman\_bgw\_\_dot\_\_interval | `number` | `null` | no |
| <a name="input_pg_partman_bgw__dot__role"></a> [pg\_partman\_bgw\_\_dot\_\_role](#input\_pg\_partman\_bgw\_\_dot\_\_role) | n/a | `string` | `null` | no |
| <a name="input_pg_qualstats_enabled"></a> [pg\_qualstats\_enabled](#input\_pg\_qualstats\_enabled) | Enable / Disable pg\_qualstats. | `bool` | `null` | no |
| <a name="input_pg_qualstats_min_err_estimate_num"></a> [pg\_qualstats\_min\_err\_estimate\_num](#input\_pg\_qualstats\_min\_err\_estimate\_num) | Error estimation num threshold to save quals. | `number` | `null` | no |
| <a name="input_pg_qualstats_min_err_estimate_ratio"></a> [pg\_qualstats\_min\_err\_estimate\_ratio](#input\_pg\_qualstats\_min\_err\_estimate\_ratio) | Error estimation ratio threshold to save quals. | `number` | `null` | no |
| <a name="input_pg_qualstats_track_constants"></a> [pg\_qualstats\_track\_constants](#input\_pg\_qualstats\_track\_constants) | Enable / Disable pg\_qualstats constants tracking. | `bool` | `null` | no |
| <a name="input_pg_qualstats_track_pg_catalog"></a> [pg\_qualstats\_track\_pg\_catalog](#input\_pg\_qualstats\_track\_pg\_catalog) | Track quals on system catalogs too. | `bool` | `null` | no |
| <a name="input_pg_stat_plans__dot__track"></a> [pg\_stat\_plans\_\_dot\_\_track](#input\_pg\_stat\_plans\_\_dot\_\_track) | Controls which statements' plans are tracked by pg\_stat\_plans. One of `top`, `all`, `none`. | `string` | `null` | no |
| <a name="input_pg_stat_plans_enable"></a> [pg\_stat\_plans\_enable](#input\_pg\_stat\_plans\_enable) | Enable the pg\_stat\_plans extension to track execution plans for SQL queries. Changing this parameter causes a service restart. | `bool` | `null` | no |
| <a name="input_pg_stat_statements__dot__track"></a> [pg\_stat\_statements\_\_dot\_\_track](#input\_pg\_stat\_statements\_\_dot\_\_track) | pg\_stat\_statements\_\_dot\_\_track | `string` | `null` | no |
| <a name="input_pg_version"></a> [pg\_version](#input\_pg\_version) | PostgreSQL major version. | `string` | `"14"` | no |
| <a name="input_pgaudit_feature_enabled"></a> [pgaudit\_feature\_enabled](#input\_pgaudit\_feature\_enabled) | Enable pgaudit extension. When enabled, pgaudit extension will be automatically installed. Otherwise, extension will be uninstalled but auditing configurations will be preserved. | `bool` | `null` | no |
| <a name="input_pgaudit_log"></a> [pgaudit\_log](#input\_pgaudit\_log) | Specifies which classes of statements will be logged by session audit logging. | `list(string)` | `[]` | no |
| <a name="input_pgaudit_log_catalog"></a> [pgaudit\_log\_catalog](#input\_pgaudit\_log\_catalog) | Specifies that session logging should be enabled in the case where all relations in a statement are in pg\_catalog. | `bool` | `null` | no |
| <a name="input_pgaudit_log_client"></a> [pgaudit\_log\_client](#input\_pgaudit\_log\_client) | Specifies whether log messages will be visible to a client process such as psql. | `bool` | `null` | no |
| <a name="input_pgaudit_log_level"></a> [pgaudit\_log\_level](#input\_pgaudit\_log\_level) | Specifies the log level that will be used for log entries. One of `debug1`-`debug5`, `info`, `log`, `notice`, `warning`. | `string` | `null` | no |
| <a name="input_pgaudit_log_max_string_length"></a> [pgaudit\_log\_max\_string\_length](#input\_pgaudit\_log\_max\_string\_length) | Crop parameters representation and whole statements if they exceed this threshold. A (default) value of -1 disable the truncation. | `number` | `null` | no |
| <a name="input_pgaudit_log_nested_statements"></a> [pgaudit\_log\_nested\_statements](#input\_pgaudit\_log\_nested\_statements) | This GUC allows to turn off logging nested statements, that is, statements that are executed as part of another ExecutorRun. | `bool` | `null` | no |
| <a name="input_pgaudit_log_parameter"></a> [pgaudit\_log\_parameter](#input\_pgaudit\_log\_parameter) | Specifies that audit logging should include the parameters that were passed with the statement. | `bool` | `null` | no |
| <a name="input_pgaudit_log_parameter_max_size"></a> [pgaudit\_log\_parameter\_max\_size](#input\_pgaudit\_log\_parameter\_max\_size) | Specifies that parameter values longer than this setting (in bytes) should not be logged, but replaced with <long param suppressed>. | `number` | `null` | no |
| <a name="input_pgaudit_log_relation"></a> [pgaudit\_log\_relation](#input\_pgaudit\_log\_relation) | Specifies whether session audit logging should create a separate log entry for each relation (TABLE, VIEW, etc.) referenced in a SELECT or DML statement. | `bool` | `null` | no |
| <a name="input_pgaudit_log_rows"></a> [pgaudit\_log\_rows](#input\_pgaudit\_log\_rows) | Log Rows. | `bool` | `null` | no |
| <a name="input_pgaudit_log_statement"></a> [pgaudit\_log\_statement](#input\_pgaudit\_log\_statement) | Specifies whether logging will include the statement text and parameters (if enabled). | `bool` | `null` | no |
| <a name="input_pgaudit_log_statement_once"></a> [pgaudit\_log\_statement\_once](#input\_pgaudit\_log\_statement\_once) | Specifies whether logging will include the statement text and parameters with the first log entry for a statement/substatement combination or with every entry. | `bool` | `null` | no |
| <a name="input_pgaudit_role"></a> [pgaudit\_role](#input\_pgaudit\_role) | Specifies the master role to use for object audit logging. | `string` | `null` | no |
| <a name="input_plan"></a> [plan](#input\_plan) | Defines what kind of computing resources are allocated for the service. | `string` | `"startup-4"` | no |
| <a name="input_private_access_pg"></a> [private\_access\_pg](#input\_private\_access\_pg) | Allow clients to connect to pg with a DNS name that always resolves to the service's private IP addresses. | `bool` | `false` | no |
| <a name="input_private_access_pgbouncer"></a> [private\_access\_pgbouncer](#input\_private\_access\_pgbouncer) | Allow clients to connect to pgbouncer with a DNS name that always resolves to the service's private IP addresses. | `bool` | `false` | no |
| <a name="input_private_access_prometheus"></a> [private\_access\_prometheus](#input\_private\_access\_prometheus) | Allow clients to connect to prometheus with a DNS name that always resolves to the service's private IP addresses. | `bool` | `false` | no |
| <a name="input_privatelink_pg"></a> [privatelink\_pg](#input\_privatelink\_pg) | Enable pg. | `bool` | `false` | no |
| <a name="input_privatelink_pgbouncer"></a> [privatelink\_pgbouncer](#input\_privatelink\_pgbouncer) | Enable pgbouncer. | `bool` | `false` | no |
| <a name="input_privatelink_prometheus"></a> [privatelink\_prometheus](#input\_privatelink\_prometheus) | Enable prometheus. | `bool` | `false` | no |
| <a name="input_project"></a> [project](#input\_project) | Aiven Cloud Project Name | `string` | n/a | yes |
| <a name="input_project_to_fork_from"></a> [project\_to\_fork\_from](#input\_project\_to\_fork\_from) | Name of another project to fork a service from. | `string` | `null` | no |
| <a name="input_project_vpc_id"></a> [project\_vpc\_id](#input\_project\_vpc\_id) | Specifies the VPC the service should run in. If the value is not set the service is not run inside a VPC. | `string` | `null` | no |
| <a name="input_public_access_pg"></a> [public\_access\_pg](#input\_public\_access\_pg) | Allow clients to connect to pg from the public internet for service nodes that are in a project VPC or another type of private network. | `bool` | `false` | no |
| <a name="input_public_access_pgbouncer"></a> [public\_access\_pgbouncer](#input\_public\_access\_pgbouncer) | Allow clients to connect to pgbouncer from the public internet for service nodes that are in a project VPC or another type of private network. | `bool` | `false` | no |
| <a name="input_public_access_prometheus"></a> [public\_access\_prometheus](#input\_public\_access\_prometheus) | Allow clients to connect to prometheus from the public internet for service nodes that are in a project VPC or another type of private network. | `bool` | `false` | no |
| <a name="input_recovery_target_time"></a> [recovery\_target\_time](#input\_recovery\_target\_time) | Recovery target time when forking a service. | `string` | `null` | no |
| <a name="input_server_connect_timeout"></a> [server\_connect\_timeout](#input\_server\_connect\_timeout) | If connection and login don't finish in this amount of time, the connection will be closed. In seconds. | `number` | `null` | no |
| <a name="input_server_idle_timeout"></a> [server\_idle\_timeout](#input\_server\_idle\_timeout) | server\_idle\_timeout | `number` | `null` | no |
| <a name="input_server_lifetime"></a> [server\_lifetime](#input\_server\_lifetime) | server\_lifetime | `number` | `null` | no |
| <a name="input_server_login_retry"></a> [server\_login\_retry](#input\_server\_login\_retry) | If login to the server failed, because of failure to connect or from authentication, the pooler waits this much before retrying to connect. In seconds. | `number` | `null` | no |
| <a name="input_server_reset_query_always"></a> [server\_reset\_query\_always](#input\_server\_reset\_query\_always) | server\_reset\_query\_always | `bool` | `null` | no |
| <a name="input_service_integrations"></a> [service\_integrations](#input\_service\_integrations) | List of the service integrations. | `list(any)` | `[]` | no |
| <a name="input_service_log"></a> [service\_log](#input\_service\_log) | Store logs for the service so that they are available in the HTTP API and console. | `bool` | `null` | no |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | Specifies the actual name of the service. | `string` | n/a | yes |
| <a name="input_service_to_fork_from"></a> [service\_to\_fork\_from](#input\_service\_to\_fork\_from) | Name of another service to fork from. | `string` | `null` | no |
| <a name="input_shared_buffers_percentage"></a> [shared\_buffers\_percentage](#input\_shared\_buffers\_percentage) | shared\_buffers\_percentage. | `number` | `null` | no |
| <a name="input_static_ips"></a> [static\_ips](#input\_static\_ips) | Static IPs that are going to be associated with this service. | `list(string)` | `[]` | no |
| <a name="input_switchover_windows"></a> [switchover\_windows](#input\_switchover\_windows) | List of switchover windows for planned primary/standby role switches. Each item supports `dow` (day of week), `start_time` and `end_time` in HH:mm:ss format. | `list(any)` | `[]` | no |
| <a name="input_synchronous_commit"></a> [synchronous\_commit](#input\_synchronous\_commit) | Sets the current transaction's synchronization level. One of `off`, `local`, `remote_write`, `remote_apply`, `on`. Takes precedence over `synchronous_replication`. | `string` | `null` | no |
| <a name="input_synchronous_replication"></a> [synchronous\_replication](#input\_synchronous\_replication) | Synchronous replication type. | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of the service tags. | `list(any)` | `[]` | no |
| <a name="input_temp_file_limit"></a> [temp\_file\_limit](#input\_temp\_file\_limit) | temp\_file\_limit | `number` | `null` | no |
| <a name="input_termination_protection"></a> [termination\_protection](#input\_termination\_protection) | Prevents the service from being deleted. | `bool` | `false` | no |
| <a name="input_timezone"></a> [timezone](#input\_timezone) | timezone | `string` | `null` | no |
| <a name="input_track_activity_query_size"></a> [track\_activity\_query\_size](#input\_track\_activity\_query\_size) | track\_activity\_query\_size | `number` | `null` | no |
| <a name="input_track_commit_timestamp"></a> [track\_commit\_timestamp](#input\_track\_commit\_timestamp) | track\_commit\_timestamp | `string` | `null` | no |
| <a name="input_track_functions"></a> [track\_functions](#input\_track\_functions) | track\_functions | `string` | `null` | no |
| <a name="input_track_io_timing"></a> [track\_io\_timing](#input\_track\_io\_timing) | track\_io\_timing | `string` | `null` | no |
| <a name="input_variant"></a> [variant](#input\_variant) | Variant of the PostgreSQL service, may affect the features that are exposed by default. | `string` | `null` | no |
| <a name="input_wal_sender_timeout"></a> [wal\_sender\_timeout](#input\_wal\_sender\_timeout) | wal\_sender\_timeout | `number` | `null` | no |
| <a name="input_wal_writer_delay"></a> [wal\_writer\_delay](#input\_wal\_writer\_delay) | wal\_writer\_delay | `number` | `null` | no |
| <a name="input_work_mem"></a> [work\_mem](#input\_work\_mem) | work\_mem | `number` | `null` | no |

## Outputs

| Name | Description |
| ---- | ----------- |
| <a name="output_cloud_name"></a> [cloud\_name](#output\_cloud\_name) | Defines where the cloud provider and region where the service is hosted in. |
| <a name="output_components"></a> [components](#output\_components) | Service component information objects. |
| <a name="output_disk_space_cap"></a> [disk\_space\_cap](#output\_disk\_space\_cap) | The maximum disk space of the service, possible values depend on the service type, the cloud provider and the project. |
| <a name="output_disk_space_default"></a> [disk\_space\_default](#output\_disk\_space\_default) | The default disk space of the service, possible values depend on the service type, the cloud provider and the project. |
| <a name="output_disk_space_step"></a> [disk\_space\_step](#output\_disk\_space\_step) | The default disk space step of the service, possible values depend on the service type, the cloud provider and the project. |
| <a name="output_id"></a> [id](#output\_id) | The ID of this resource. |
| <a name="output_maintenance_window_dow"></a> [maintenance\_window\_dow](#output\_maintenance\_window\_dow) | Day of week when maintenance operations should be performed. |
| <a name="output_maintenance_window_enabled"></a> [maintenance\_window\_enabled](#output\_maintenance\_window\_enabled) | Indicates whether the maintenance window is currently enabled for this service. |
| <a name="output_maintenance_window_time"></a> [maintenance\_window\_time](#output\_maintenance\_window\_time) | Time of day when maintenance operations should be performed. |
| <a name="output_pg"></a> [pg](#output\_pg) | PostgreSQL specific server provided values. |
| <a name="output_pg_user_config"></a> [pg\_user\_config](#output\_pg\_user\_config) | Pg user configurable settings. |
| <a name="output_plan"></a> [plan](#output\_plan) | Defines what kind of computing resources are allocated for the service. |
| <a name="output_project"></a> [project](#output\_project) | Aiven Cloud Project Name. |
| <a name="output_service_host"></a> [service\_host](#output\_service\_host) | The hostname of the service. |
| <a name="output_service_integrations"></a> [service\_integrations](#output\_service\_integrations) | Service integrations to specify when creating a service. |
| <a name="output_service_name"></a> [service\_name](#output\_service\_name) | Specifies the actual name of the service. |
| <a name="output_service_password"></a> [service\_password](#output\_service\_password) | Password used for connecting to the service, if applicable. |
| <a name="output_service_port"></a> [service\_port](#output\_service\_port) | The port of the service. |
| <a name="output_service_type"></a> [service\_type](#output\_service\_type) | Aiven internal service type code. |
| <a name="output_service_uri"></a> [service\_uri](#output\_service\_uri) | URI for connecting to the service. |
| <a name="output_service_username"></a> [service\_username](#output\_service\_username) | Username used for connecting to the service. |
| <a name="output_static_ips"></a> [static\_ips](#output\_static\_ips) | Static IPs that are going to be associated with this service. |
<!-- END_TF_DOCS -->

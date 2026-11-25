# Changelog

All notable changes to this module will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [2.1.0] - 2026-11-25

### Added
- Add `cmk_id` variable for bring your own key (BYOK) encryption support.
- Add new `pg_user_config` variables: `backup_interval_hours`, `backup_retention_days`,
  `enable_ha_replica_dns`, `ip_filter_string`, `node_count`, `pg_stat_plans_enable`,
  `service_log` and `switchover_windows`.
- Add new `pg` block variables: `io_combine_limit`, `io_max_combine_limit`,
  `io_max_concurrency`, `io_method`, `io_workers`, `max_connections`,
  `max_sync_workers_per_subscription`, `password_encryption`, `pg_stat_plans__dot__track`
  and `synchronous_commit`.
- Add `pgaudit` block variables: `pgaudit_feature_enabled`, `pgaudit_log`,
  `pgaudit_log_catalog`, `pgaudit_log_client`, `pgaudit_log_level`,
  `pgaudit_log_max_string_length`, `pgaudit_log_nested_statements`, `pgaudit_log_parameter`,
  `pgaudit_log_parameter_max_size`, `pgaudit_log_relation`, `pgaudit_log_rows`,
  `pgaudit_log_statement`, `pgaudit_log_statement_once` and `pgaudit_role`.
- Add `pg_qualstats` block variables: `pg_qualstats_enabled`,
  `pg_qualstats_min_err_estimate_num`, `pg_qualstats_min_err_estimate_ratio`,
  `pg_qualstats_track_constants` and `pg_qualstats_track_pg_catalog`.
- Add new `pgbouncer` block variables: `max_prepared_statements`, `server_connect_timeout`
  and `server_login_retry`.
- Add `ignore_roles` option to the `migration` block.
- Add `maintenance_window_enabled` output to the root module and
  `password_encryption_type` output to the `pg_user` submodule.
- Add `README.ru.md` with Russian translation.

### Changed
- Raise aiven/aiven provider constraint to `>= 4.62.0, < 5.0.0` in the root module and
  all submodules (minimum version providing the new fields, validated against 4.66.0).
- **Breaking:** change the default PostgreSQL major version from 14 (EOL) to 18 for
  newly created services.

## [2.0.1] - 2025-04-03

### Fixed
- Fix `pg_user_config` migration lifecycle `ignore_changes` path for provider v4 syntax.

## [2.0.0] - 2023-03-24

### Changed
- **Breaking:** add aiven/aiven provider v4 support.

## [1.0.4] - 2023-03-24

### Fixed
- Lock aiven/aiven provider version to `< 4.0.0`.

## [1.0.2] - 2022-10-03

### Changed
- Rework examples to the one-variable approach.

## [1.0.1] - 2022-08-18

### Fixed
- Fix `tag` block handling.

## [1.0.0] - 2022-08-10

### Added
- `pg_user` submodule.

## [0.6.0] - 2022-08-10

### Added
- `pg_database` submodule.

## [0.5.0] - 2022-08-10

### Added
- Access blocks (`public_access`, `private_access`, `privatelink_access`).

## [0.4.0] - 2022-08-10

### Added
- `pg` and `pgbouncer` blocks in `pg_user_config`.

## [0.3.0] - 2022-08-10

### Added
- `migration` block in `pg_user_config`.

## [0.2.0] - 2022-08-10

### Added
- `pg_user_config` block.

## [0.1.0] - 2022-08-08

### Added
- Initial release.

[Unreleased]: https://github.com/tf-cloud-modules/terraform-aiven-postgresql/compare/2.0.1...HEAD
[2.0.1]: https://github.com/tf-cloud-modules/terraform-aiven-postgresql/compare/2.0.0...2.0.1
[2.0.0]: https://github.com/tf-cloud-modules/terraform-aiven-postgresql/compare/1.0.4...2.0.0
[1.0.4]: https://github.com/tf-cloud-modules/terraform-aiven-postgresql/compare/1.0.2...1.0.4
[1.0.2]: https://github.com/tf-cloud-modules/terraform-aiven-postgresql/compare/1.0.1...1.0.2
[1.0.1]: https://github.com/tf-cloud-modules/terraform-aiven-postgresql/compare/1.0.0...1.0.1
[1.0.0]: https://github.com/tf-cloud-modules/terraform-aiven-postgresql/compare/0.6.0...1.0.0
[0.6.0]: https://github.com/tf-cloud-modules/terraform-aiven-postgresql/compare/0.5.0...0.6.0
[0.5.0]: https://github.com/tf-cloud-modules/terraform-aiven-postgresql/compare/0.4.0...0.5.0
[0.4.0]: https://github.com/tf-cloud-modules/terraform-aiven-postgresql/compare/0.3.0...0.4.0
[0.3.0]: https://github.com/tf-cloud-modules/terraform-aiven-postgresql/compare/0.2.0...0.3.0
[0.2.0]: https://github.com/tf-cloud-modules/terraform-aiven-postgresql/compare/0.1.0...0.2.0
[0.1.0]: https://github.com/tf-cloud-modules/terraform-aiven-postgresql/releases/tag/0.1.0

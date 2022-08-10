# Aiven PostgreSQL Terraform module

Terraform module which creates Aiven PostgreSQL resources

## Usage

```hcl
module "redis" {
  source  = "tf-cloud-modules/postgresql/aiven"
  project      = "test"
  service_name = "test"
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_aiven"></a> [aiven](#requirement\_aiven) | >= 3.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aiven"></a> [aiven](#provider\_aiven) | 3.4.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aiven_pg.this](https://registry.terraform.io/providers/aiven/aiven/latest/docs/resources/pg) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloud_name"></a> [cloud\_name](#input\_cloud\_name) | Defines where the cloud provider and region where the service is hosted in. | `string` | `"aws-us-east-1"` | no |
| <a name="input_create"></a> [create](#input\_create) | Controls if resources should be created. | `bool` | `true` | no |
| <a name="input_enable_ipv6"></a> [enable\_ipv6](#input\_enable\_ipv6) | Enable IPv6. | `string` | `"false"` | no |
| <a name="input_ip_filter"></a> [ip\_filter](#input\_ip\_filter) | IP filter. | `list(string)` | <pre>[<br>  "0.0.0.0/0"<br>]</pre> | no |
| <a name="input_maintenance_window_dow"></a> [maintenance\_window\_dow](#input\_maintenance\_window\_dow) | Day of week when maintenance operations should be performed. One monday, tuesday, wednesday, etc. | `string` | `"thursday"` | no |
| <a name="input_maintenance_window_time"></a> [maintenance\_window\_time](#input\_maintenance\_window\_time) | Time of day when maintenance operations should be performed. UTC time in HH:mm:ss format. | `string` | `"01:00:00"` | no |
| <a name="input_migration_dbname"></a> [migration\_dbname](#input\_migration\_dbname) | Database name for bootstrapping the initial connection. | `string` | `""` | no |
| <a name="input_migration_host"></a> [migration\_host](#input\_migration\_host) | Hostname or IP address of the server where to migrate data from. | `string` | `""` | no |
| <a name="input_migration_ignore_dbs"></a> [migration\_ignore\_dbs](#input\_migration\_ignore\_dbs) | Comma-separated list of databases, which should be ignored during migration. | `string` | `""` | no |
| <a name="input_migration_method"></a> [migration\_method](#input\_migration\_method) | The migration method to be used. | `string` | `""` | no |
| <a name="input_migration_password"></a> [migration\_password](#input\_migration\_password) | Password for authentication with the server where to migrate data from. | `string` | `""` | no |
| <a name="input_migration_port"></a> [migration\_port](#input\_migration\_port) | Port number of the server where to migrate data from. | `string` | `""` | no |
| <a name="input_migration_ssl"></a> [migration\_ssl](#input\_migration\_ssl) | The server where to migrate data from is secured with SSL. | `string` | `""` | no |
| <a name="input_migration_username"></a> [migration\_username](#input\_migration\_username) | User name for authentication with the server where to migrate data. | `string` | `""` | no |
| <a name="input_pg_version"></a> [pg\_version](#input\_pg\_version) | PostgreSQL major version. | `string` | `"14"` | no |
| <a name="input_plan"></a> [plan](#input\_plan) | Defines what kind of computing resources are allocated for the service. | `string` | `"startup-4"` | no |
| <a name="input_project"></a> [project](#input\_project) | Aiven Cloud Project Name | `string` | n/a | yes |
| <a name="input_project_to_fork_from"></a> [project\_to\_fork\_from](#input\_project\_to\_fork\_from) | Name of another project to fork a service from. | `string` | `""` | no |
| <a name="input_project_vpc_id"></a> [project\_vpc\_id](#input\_project\_vpc\_id) | Specifies the VPC the service should run in. If the value is not set the service is not run inside a VPC. | `string` | `null` | no |
| <a name="input_recovery_target_time"></a> [recovery\_target\_time](#input\_recovery\_target\_time) | Recovery target time when forking a service. | `string` | `""` | no |
| <a name="input_service_integrations"></a> [service\_integrations](#input\_service\_integrations) | List of the service integrations. | `list(any)` | `[]` | no |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | Specifies the actual name of the service. | `string` | n/a | yes |
| <a name="input_service_to_fork_from"></a> [service\_to\_fork\_from](#input\_service\_to\_fork\_from) | Name of another service to fork from.. | `string` | `""` | no |
| <a name="input_shared_buffers_percentage"></a> [shared\_buffers\_percentage](#input\_shared\_buffers\_percentage) | shared\_buffers\_percentage. | `string` | `""` | no |
| <a name="input_static_ips"></a> [static\_ips](#input\_static\_ips) | Static IPs that are going to be associated with this service. | `list(string)` | `[]` | no |
| <a name="input_synchronous_replication"></a> [synchronous\_replication](#input\_synchronous\_replication) | Synchronous replication type. | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of the service tags. | `list(any)` | `[]` | no |
| <a name="input_termination_protection"></a> [termination\_protection](#input\_termination\_protection) | Prevents the service from being deleted. | `bool` | `false` | no |
| <a name="input_variant"></a> [variant](#input\_variant) | Variant of the PostgreSQL service, may affect the features that are exposed by default. | `string` | `""` | no |
| <a name="input_work_mem"></a> [work\_mem](#input\_work\_mem) | work\_mem. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cloud_name"></a> [cloud\_name](#output\_cloud\_name) | Defines where the cloud provider and region where the service is hosted in. |
| <a name="output_components"></a> [components](#output\_components) | Service component information objects. |
| <a name="output_disk_space_cap"></a> [disk\_space\_cap](#output\_disk\_space\_cap) | The maximum disk space of the service, possible values depend on the service type, the cloud provider and the project. |
| <a name="output_disk_space_default"></a> [disk\_space\_default](#output\_disk\_space\_default) | The default disk space of the service, possible values depend on the service type, the cloud provider and the project. |
| <a name="output_disk_space_step"></a> [disk\_space\_step](#output\_disk\_space\_step) | The default disk space step of the service, possible values depend on the service type, the cloud provider and the project. |
| <a name="output_id"></a> [id](#output\_id) | The ID of this resource. |
| <a name="output_maintenance_window_dow"></a> [maintenance\_window\_dow](#output\_maintenance\_window\_dow) | Day of week when maintenance operations should be performed. |
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
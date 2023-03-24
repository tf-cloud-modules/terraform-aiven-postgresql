# Aiven PostgreSQL Database Terraform module

Terraform module which creates Aiven PostgreSQL Database resources

## Usage

```hcl
module "pg_database" {
  source        = "tf-cloud-modules/postgresql/aiven//modules/pg_database"
  project       = "test"
  service_name  = "test"
  database_name = "test"
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_aiven"></a> [aiven](#requirement\_aiven) | >= 4.0.0, < 5.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aiven"></a> [aiven](#provider\_aiven) | 4.1.3 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aiven_pg_database.this](https://registry.terraform.io/providers/aiven/aiven/latest/docs/resources/pg_database) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create"></a> [create](#input\_create) | Controls if resources should be created. | `bool` | `true` | no |
| <a name="input_database_name"></a> [database\_name](#input\_database\_name) | The name of the service database. | `string` | n/a | yes |
| <a name="input_lc_collate"></a> [lc\_collate](#input\_lc\_collate) | Default string sort order (LC\_COLLATE) of the database. | `string` | `"en_US.UTF-8"` | no |
| <a name="input_lc_ctype"></a> [lc\_ctype](#input\_lc\_ctype) | Default character classification (LC\_CTYPE) of the database. | `string` | `"en_US.UTF-8"` | no |
| <a name="input_project"></a> [project](#input\_project) | Aiven Cloud Project Name. | `string` | n/a | yes |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | Specifies the actual name of the service. | `string` | n/a | yes |
| <a name="input_termination_protection"></a> [termination\_protection](#input\_termination\_protection) | Prevents the service from being deleted. | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_database_name"></a> [database\_name](#output\_database\_name) | The name of the service database. |
| <a name="output_id"></a> [id](#output\_id) | The ID of this resource. |
| <a name="output_lc_collate"></a> [lc\_collate](#output\_lc\_collate) | Default string sort order (LC\_COLLATE) of the database. |
| <a name="output_lc_ctype"></a> [lc\_ctype](#output\_lc\_ctype) | Default character classification (LC\_CTYPE) of the database. |
| <a name="output_project"></a> [project](#output\_project) | Aiven Cloud Project Name. |
| <a name="output_service_name"></a> [service\_name](#output\_service\_name) | Specifies the actual name of the service. |
<!-- END_TF_DOCS -->
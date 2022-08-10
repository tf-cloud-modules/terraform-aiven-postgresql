# Complete Aiven PostgreSQL Cluster

Configuration in this directory creates an Aiven PostgreSQL cluster with following features:

- Aiven PostgreSQL Cluster
- Aiven PostgreSQL User
- Aiven PostgreSQL Database

## Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Note that this example may create resources which cost money. Run `terraform destroy` when you don't need these resources.
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_aiven"></a> [aiven](#requirement\_aiven) | >= 3.0.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_pg"></a> [pg](#module\_pg) | ../.. | n/a |
| <a name="module_pg_database"></a> [pg\_database](#module\_pg\_database) | ../../modules/pg_database | n/a |
| <a name="module_pg_user"></a> [pg\_user](#module\_pg\_user) | ../../modules/pg_user | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create"></a> [create](#input\_create) | Controls if resources should be created. | `bool` | `true` | no |
| <a name="input_database_name"></a> [database\_name](#input\_database\_name) | The name of the service database. | `string` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | Aiven Cloud Project Name. | `string` | n/a | yes |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | Specifies the actual name of the service. | `string` | n/a | yes |
| <a name="input_username"></a> [username](#input\_username) | The actual name of the PG User. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
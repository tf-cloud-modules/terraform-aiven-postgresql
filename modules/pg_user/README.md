# Aiven PostgreSQL User Terraform module

Terraform module which creates Aiven PostgreSQL User resources

## Usage

```hcl
module "pg_user" {
  source        = "tf-cloud-modules/postgresql/aiven//modules/pg_user"
  project       = "test"
  service_name  = "test"
  username      = "test"
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
| [aiven_pg_user.this](https://registry.terraform.io/providers/aiven/aiven/latest/docs/resources/pg_user) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create"></a> [create](#input\_create) | Controls if resources should be created. | `bool` | `true` | no |
| <a name="input_project"></a> [project](#input\_project) | Aiven Cloud Project Name. | `string` | n/a | yes |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | Specifies the actual name of the service. | `string` | n/a | yes |
| <a name="input_username"></a> [username](#input\_username) | The actual name of the PG User. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_access_cert"></a> [access\_cert](#output\_access\_cert) | Access certificate for the user. |
| <a name="output_access_key"></a> [access\_key](#output\_access\_key) | Access certificate key for the user. |
| <a name="output_id"></a> [id](#output\_id) | The ID of this resource. |
| <a name="output_password"></a> [password](#output\_password) | The password of the PG User. |
| <a name="output_pg_allow_replication"></a> [pg\_allow\_replication](#output\_pg\_allow\_replication) | Defines whether replication is allowed. |
| <a name="output_project"></a> [project](#output\_project) | Aiven Cloud Project Name. |
| <a name="output_service_name"></a> [service\_name](#output\_service\_name) | Specifies the actual name of the service. |
| <a name="output_username"></a> [username](#output\_username) | The actual name of the PG User. |
<!-- END_TF_DOCS -->
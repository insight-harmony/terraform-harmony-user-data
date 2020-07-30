# terraform-harmony-user-data

[![open-issues](https://img.shields.io/github/issues-raw/insight-infrastructure/terraform-harmony-user-data?style=for-the-badge)](https://github.com/insight-infrastructure/terraform-harmony-user-data/issues)
[![open-pr](https://img.shields.io/github/issues-pr-raw/insight-infrastructure/terraform-harmony-user-data?style=for-the-badge)](https://github.com/insight-infrastructure/terraform-harmony-user-data/pulls)

## Features

This module creates user data and cloud init scripts for Harmony blockchain. All clouds are supported. 

## Terraform Versions

For Terraform v0.12.0+

## Usage

```hcl-terraform
module "this" {
  source = "github.com/insight-infrastructure/terraform-harmony-user-data"
  cloud_provider = "aws"
}
```

Supports:
- AWS 
- Azure
- GCP 
- DigitalOcean 

## Examples

- [defaults](https://github.com/insight-infrastructure/terraform-harmony-user-data/tree/master/examples/defaults)

## Known  Issues
No issue is creating limit on this module.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Providers

| Name | Version |
|------|---------|
| template | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| cloud\_provider | What provider is this node running on? | `string` | n/a | yes |
| consul\_enabled | Enable consul service | `bool` | `false` | no |
| disable\_ipv6 | Disable ipv6 in grub | `bool` | `true` | no |
| driver\_type | The ebs volume driver - nitro or standard | `string` | `"nitro"` | no |
| enable\_hourly\_cron\_updates | n/a | `string` | `"false"` | no |
| keys\_update\_frequency | n/a | `string` | `""` | no |
| log\_config\_bucket | n/a | `string` | `""` | no |
| log\_config\_key | n/a | `string` | `""` | no |
| mount\_volumes | Boolean to mount volume | `bool` | `true` | no |
| node\_tags | The tag to put into the node exporter for consul to pick up the tag of the instance and associate the proper metrics | `string` | `"prep"` | no |
| prometheus\_enabled | Download and start node exporter | `bool` | `false` | no |
| prometheus\_password | Password to pass through for node exporter | `string` | `""` | no |
| prometheus\_user | Username to pass through for node exporter | `string` | `""` | no |
| region | The region you are deploying into - only relevant for consul | `string` | `""` | no |
| s3\_bucket\_name | n/a | `string` | `""` | no |
| s3\_bucket\_uri | n/a | `string` | `""` | no |
| ssh\_user | n/a | `string` | `"ubuntu"` | no |
| type | Type of node - ie sentry / validator, - more to come | `string` | `"sentry"` | no |

## Outputs

No output.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Testing
This module has been packaged with terratest tests

To run them:

1. Install Go
2. Run `make test-init` from the root of this repo
3. Run `make test` again from root

## Authors

Module managed by [insight-infrastructure](https://github.com/insight-infrastructure)

## Credits

- [Anton Babenko](https://github.com/antonbabenko)

## License

Apache 2 Licensed. See LICENSE for full details.
# terraform-module-linode-network

A simple Terraform module for creating instances in Linode.

## Module

Invoke this module from the root `main.tf` file.

```hcl
module "network" {
  source                  = "./modules/network"
  linode_ids              = module.web.web_linode_ids
  db_linode_ids           = module.db.db_linode_ids
  web_servers_private_ips = module.web.web_servers_private_ips
}
```

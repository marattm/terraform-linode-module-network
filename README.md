# terraform-module-linode-network

## Module

Invoke this module from the root `main.tf` file.

```hcl
module "network" {
  source                  = "../modules/terraform-linode-module-network"
  linode_ids              = module.web.web_linode_ids
  db_linode_ids           = module.db.db_linode_ids
  web_servers_private_ips = module.web.web_servers_private_ips
}
```

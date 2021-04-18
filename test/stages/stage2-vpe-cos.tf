module "vpe-cos" {
  source = "./module"

  resource_group_name = module.resource_group.name
  region              = var.region
  ibmcloud_api_key    = var.ibmcloud_api_key
  name_prefix         = var.name_prefix
  vpc_id              = module.vpc.id
  vpc_subnets         = module.subnets.subnets
  vpc_subnet_count    = module.subnets.count
  resource_label      = "cos"
  resource_crn        = module.cos.id
  resource_service    = module.cos.service
}

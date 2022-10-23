module "network" {
  source = "./network"

  AZ_1a = var.AZ_1a
  AZ_1b = var.AZ_1b
}

module "DB" {
  source = "./DB"

  private_sub_1 = module.network.pvt_sub_2_id
  private_sub_2 = module.network.pvt_sub_2_id
  public_sub_1 = module.network.pub_sub_1_id


}



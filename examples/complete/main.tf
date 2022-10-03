module "pg" {
  source       = "../.."
  project      = var.project
  service_name = "test"
  tags = [
    {
      key   = "env"
      value = "test"
    }
  ]
}

module "pg_user" {
  source       = "../../modules/pg_user"
  project      = module.pg.project
  service_name = module.pg.service_name
  username     = "test"
}

module "pg_database" {
  source        = "../../modules/pg_database"
  project       = module.pg.project
  service_name  = module.pg.service_name
  database_name = "test"
}
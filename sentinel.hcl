module "tfplan-functions" {
  source = "./common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
  source = "./common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
  source = "./common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

module "tfrun-functions" {
  source = "./common-functions/tfrun-functions/tfrun-functions.sentinel"
}

module "aws-functions" {
  source = "./aws-functions/aws-functions.sentinel"
}

module "tags-exceptions" {
  source = "./aws-functions/tags-exceptions.sentinel"
}

policy "restrict-amis" {
  source = "./restrict-amis.sentinel"
  enforcement_level = "advisory"
}

policy "check-mandatory-tags" {
  source = "./check-mandatory-tags.sentinel"
  enforcement_level = "soft-mandatory"
}

policy "check-cost-by-workspace-name" {
  source  = "./check-cost-by-workspace-name.sentinel"
  enforcement_level = "soft-mandatory"
}

/*
policy "check-instance-type-in-devenv" {
  source = "./check-instance-type-in-devenv.sentinel"
  enforcement_level = "advisory"
}


policy "restrict-db-instance-engines" {
   source = "./restrict-db-instance-engines.sentinel"
   enforcement_level = "advisory"
 }

policy "check-budget-module-from-pmr" {
  source = "./check-budget-module-from-pmr.sentinel"
  enforcement_level = "soft-mandatory"
}

policy "check-scheduler-module-from-pmr" {
  source  = "./check-scheduler-module-from-pmr.sentinel"
  enforcement_level = "advisory"
}
*/

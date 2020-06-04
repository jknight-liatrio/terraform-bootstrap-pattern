include {
  path = find_in_parent_folders()
}

remote_state {
  backend = "azurerm"
  generate = {
    path = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
  config = {
    resource_group_name  = "tfstate-storage"
    storage_account_name = "satfstateazurebootstrap"
    container_name       = "tfstate"
    key                  = "bootstrap/bootstrap-terraform.tfstate"
  }
}


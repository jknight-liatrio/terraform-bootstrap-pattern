# Introduction 

This repository contains the terraform required to build unique/one-off instances
of azure resources required to get terraform running in an automated way in the 
pipeline.

This terraform is intended to act like a "big-bang" for the rest of your infrastructure
by creating the resources that are only defined once.

# Resources provisioned in the "big-bang"

* Terraform state management
    * tfstate resource group
    * azure key vault for access to tfstate
    * storage account with permission for handling tfstate

# Running

An initial run of this terraform must be done locally. 

```shell script
cd env/local
terragrunt init
terragrunt plan
terragrunt apply
```

Pushing remote state after bootstrap

```shell script
cd env/remote
terragrunt init
cat ../local/bootstrap-local.tfstate | terragrunt state push -
terragrunt plan
terragrunt apply
```





# Contribute
TODO: Explain how other users and developers can contribute to make your code better. 


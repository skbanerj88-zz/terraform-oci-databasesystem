# Terraform-OCI-DB-System
Terraform Sample for an Oracle Cloud Infrastructure Database System

This example is meant to be used with a trial tenancy or as a method to familiarize yourself with Terraform and how it works.

Since Terraform is incredibly flexible, the methods presented in this example are not meant to be considered the "best practices".

The example is not intended to be used for a production environment without review.

### Important note
-- This module assumes that there is supporting infrastructure in place to properly provision an instance.

## Prerequisites:
- Virtual Cloud Network
- Subnet

## Variables
The variables used for the module are populated using a shell script. The purpose behind this is to allow freedom to define the variables outside of the module. This is done to allow modules greater flexibility without the need to define each variable on runtime or within a file.

A "sampleENV.sh" has been provided and should be populated prior to running "terraform init".

## How to use this module
Below example shows how to use this module of an environment, let's call it "Dev":
```
module "Dev" {

        source = "<Module Location>"
        project_name = "myproject"
        environment_name = "dev"
        availability_domain = "<Availibility Domain Name>"
        compartment_id = "<OCID of required compartment>"
        subnet_id = "<OCID of the required subnet>"
        database_edition = "<Database Edition>"
        pdb_name = "<PDB Name>"
        admin_password = "<SYS user password>"
        character_set = "AL32UTF8"
        ncharacter_set = "AL16UTF16"
        auto_backup_enabled = "True"
        recovery_window_in_days = "15"
        shape = "VM.Standard2.1"
        db_workload = "DSS"
        node_count = "1"
        data_storage_size_in_gb = "1024"
        ssh_public_keys = "<Path to Public Key file which will be associated with opc user>"

}
```
**Important** - Above values for each of the variables are just examples. Make sure you update each of the variables as per your requirements.

## Flow
```
source ./sampleENV.sh
terraform init
terraform plan
terraform apply
```

/*
Variable file to define all the parameters
required for provisioning database system
in Oracle Cloud Infrastructure.
*/


variable "project_name" {
  description = "Project Name. "
}

variable "environment_name" {
  description = "Environment Name. "
}

variable "availability_domain" {
  description = "The availability domain where the instance should be located. This should be tied to a subnet's availability domain."
}

variable "compartment_id" {
  description = "OCID of the compartment you want the instance to be provisioned."
}

variable "subnet_id" {
  description = "The OCID of the subnet the instance will be located."
}

variable "database_edition" {
  description = "Type of database edition. Eg: 'ENTERPRISE_EDITION_HIGH_PERFORMANCE'"
}

variable "pdb_name" {
  description = "Database PDB Name"
  default = "pdb1"
}

variable "admin_password" {
  description = "Database system/admin user password."
}

variable "character_set" {
  description = "Database character set."
  default = "AL32UTF8"
}

variable "ncharacter_set" {
  description = "Database National character set."
  default = "AL16UTF16"
}

variable "auto_backup_enabled" {
  description = "Auto backup enable flag. True | False"
  default = "True"
}

variable "recovery_window_in_days" {
  description = "Recovery window in days"
  default = "15"
}

variable "shape" {
  description = "The type of shape to provision the instance with. Example: 1 OCPU = VM.Shape2.1"
}

variable "db_workload" {
  description = "Database workload type"
}

variable "node_count" {
  description = "Number of nodes"
  default = "1"
}

variable "data_storage_size_in_gb" {
  description = "Database storage size in GB."
}

variable "ssh_public_keys" {
  description = "Path to SSH Public Key associated with authorized user."
}

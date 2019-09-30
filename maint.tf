/*
Terraform module for provisioning Database System 
in Oracle Cloud Infrastructure.
*/

resource "oci_database_db_system" "db_system" {
    availability_domain = "${var.availability_domain}"
    compartment_id = "${var.compartment_id}"
    database_edition = "${var.database_edition}"
    db_home {
        database {
            admin_password = "${var.admin_password}"
            character_set = "${var.character_set}"
            db_backup_config {
                auto_backup_enabled = "${var.auto_backup_enabled}"
                recovery_window_in_days = "${var.recovery_window_in_days}"
            }
            db_name = "${var.environment_name}"
            db_workload = "${var.db_workload}"
            freeform_tags = { "Project" = "${var.project_name}"}
            ncharacter_set = "${var.ncharacter_set}"
            pdb_name = "${var.pdb_name}"
        }
        db_version = "12.2.0.1.190716"
    }
    hostname = "${var.environment_name}"
    shape = "${var.shape}"
    ssh_public_keys = ["${file(var.ssh_public_keys)}"]
    subnet_id = "${var.subnet_id}"
        node_count = "${var.node_count}"
        data_storage_size_in_gb = "${var.data_storage_size_in_gb}"
        display_name = "${var.environment_name}"

    lifecycle {
       ignore_changes = ["db_home.0.database.0.admin_password","db_home.0.database.0.backup_tde_password"]
    }
}

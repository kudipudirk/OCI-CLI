resource "oci_core_instance" "vm" {

  availability_domain = var.ad
  compartment_id      = var.compartment_id
  shape               = var.shape
  display_name        = var.instance_name

  create_vnic_details {
    subnet_id        = var.subnet_id
    assign_public_ip = true
  }

  source_details {
    source_type = "image"
    source_id   = var.image_id
  }

  metadata = {
    ssh_authorized_keys = var.ssh_key
  }
}

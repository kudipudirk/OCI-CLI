provider "oci" {
  region = var.region
}

module "compute" {
  source = "../../modules/compute"

  compartment_id = var.compartment_id
  subnet_id      = var.subnet_id
  instance_name  = "dev-instance"
  shape          = "VM.Standard.E2.1.Micro"
  image_id       = var.image_id
  ssh_key        = var.ssh_key
  ad             = var.ad
}

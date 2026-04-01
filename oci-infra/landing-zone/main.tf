provider "oci" {
  region = var.region
}

resource "oci_core_vcn" "lz_vcn" {
  cidr_block     = var.vcn_cidr
  compartment_id = var.compartment_id
  display_name   = "landing-zone-vcn"
}

resource "oci_core_subnet" "lz_subnet" {
  cidr_block     = var.subnet_cidr
  compartment_id = var.compartment_id
  vcn_id         = oci_core_vcn.lz_vcn.id
  display_name   = "landing-zone-subnet"
}

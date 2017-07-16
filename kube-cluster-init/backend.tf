terraform {
  backend "gcs" {
    bucket  = "vulgr-terraform-state"
    path    = "vulgr/cluster/terraform.tfstate"
    project = "monthly-hacking"
  }
}

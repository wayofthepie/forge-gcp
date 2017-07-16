provider "google" {
  region  = "${var.region}"
  project = "${var.project}"
}

resource "google_container_cluster" "primary" {
  name = "vulgr-cluster"
  zone = "${var.zone}"
  initial_node_count = 3

  master_auth {
    username = "${var.kube_username}"
    password = "${var.kube_password}"
  }

  node_config {
    oauth_scopes = [
      "https://www.googleapis.com/auth/compute",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]
  }
}

provider "k3d" {
  # example configuration here
}

resource "k3d_cluster" "demo" {
  name    = "demo"
  servers = 1
  agents  = 2
  kubeconfig {
    update_default_kubeconfig = true
    switch_current_context    = true
  }
}
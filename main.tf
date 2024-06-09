resource "k3d_cluster" "demo" {
  name    = var.K3D_CLUSTER_NAME
  servers = var.K3D_NUM_SERVERS
  agents  = var.K3D_NUM_AGENTS
  kubeconfig {
    update_default_kubeconfig = true
    switch_current_context    = true
  }
}
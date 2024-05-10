variable "K3D_CLUSTER_NAME" {
  type        = string
  default     = "demo"
  description = "k3d cluster name"
}

variable "K3D_NUM_SERVERS" {
  type        = number
  default     = 1
  description = "k3d server nodes number"
}

variable "K3D_NUM_AGENTS" {
  type        = number
  default     = 2
  description = "k3d agent nodes number"
}
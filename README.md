# Terraform Module for Creating k3d Cluster

## Overview

This Terraform module allows you to create a k3d cluster easily. k3d is a lightweight Kubernetes distribution designed for local development and testing purposes.

## Prerequisites

Before using this Terraform module, ensure you have the following prerequisites:

- [Terraform](https://www.terraform.io/) installed.
- [k3d](https://k3d.io/) CLI installed.

## Usage

1. Clone this repository or download the module files.
2. Ensure you have configured your Terraform provider settings appropriately.
3. Create a new Terraform configuration file (e.g., `main.tf`) and define your k3d cluster using this module.

Example `main.tf`:

```hcl
provider "k3d" {
  # Example configuration here
}

resource "k3d_cluster" "demo" {
  name    = var.K3D_CLUSTER_NAME
  servers = var.K3D_NUM_SERVERS
  agents  = var.K3D_NUM_AGENTS
  kubeconfig {
    update_default_kubeconfig = true
    switch_current_context    = true
  }
}
```

4. Define the required variables in a `variables.tf` file or provide them directly in your main configuration file.

   Example `variables.tf`:

   ```hcl
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
   ```

5. Initialize Terraform and apply the configuration to create your k3d cluster.

   ```bash
   terraform init
   terraform plan
   terraform apply
   ```

## Configuration

This module supports the following configuration options:

| Variable            | Type   | Default | Description                 |
|---------------------|--------|---------|-----------------------------|
| `K3D_CLUSTER_NAME`  | String | `demo`  | Name of the k3d cluster.    |
| `K3D_NUM_SERVERS`   | Number | `1`     | Number of server nodes.     |
| `K3D_NUM_AGENTS`    | Number | `2`     | Number of agent nodes.      |

## License

This project is licensed under the [MIT License](LICENSE).

---

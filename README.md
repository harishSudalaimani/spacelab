# SpaceLab

A GitOps-managed Kubernetes homelab running on Fedora.

## Tooling
- Terraform: infrastructure and initial provisioning
- Ansible: Fedora host configuration
- Kubernetes: kubeadm + containerd
- Cilium: CNI and Gateway API
- Argo CD: GitOps deployments
- Cloudflare Tunnel: external access

## Repository Structure
- terraform/ — Infrastructure and initial provisioning
- ansible/ — Host configuration
- gitops/ — Kubernetes add-ons and applications

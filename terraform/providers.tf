provider "helm" {
  kubernetes {
    config_path = pathexpand("~/.kube/spacelab-config")
  }
}
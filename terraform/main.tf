module "cilium" {
  source = "./modules/cilium"
}

module "argocd" {
  source = "./modules/argocd"
}

module "cert_manager" {
  source = "./modules/cert-manager"
}
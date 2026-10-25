resource "helm_release" "this" {
  name             = "argocd"
  namespace        = "argocd"
  repository       = "https://argoproj.github.io/argo-helm"
  chart            = "argo-cd"
  version          = "10.11.1"
  create_namespace = true

  wait    = true
  timeout = 600

  lifecycle {
    prevent_destroy = true
  }
}
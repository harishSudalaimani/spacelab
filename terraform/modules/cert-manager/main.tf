resource "helm_release" "this" {
  name             = "cert-manager"
  namespace        = "cert-manager"
  repository       = "https://charts.jetstack.io"
  chart            = "cert-manager"
  version          = "v1.21.3"
  create_namespace = true

  values = [
    yamlencode({
      crds = {
        enabled = true
      }
    })
  ]

  wait    = true
  timeout = 600

  lifecycle {
    prevent_destroy = true
  }
}
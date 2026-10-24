
resource "helm_release" "this" {
  name       = "cilium"
  namespace  = "kube-system"
  repository = "https://helm.cilium.io/"
  chart      = "cilium"
  version    = "1.20.4"

  timeout = 300
  wait    = true

  values = [
    yamlencode({
      cluster = {
        name = "kubernetes"
      }

      k8sServiceHost       = "192.168.29.34"
      k8sServicePort       = 6443
      kubeProxyReplacement = true

      operator = {
        replicas = 1
      }

      routingMode   = "tunnel"
      tunnelProtocol = "vxlan"
    })
  ]

  lifecycle {
    prevent_destroy = true
  }
}

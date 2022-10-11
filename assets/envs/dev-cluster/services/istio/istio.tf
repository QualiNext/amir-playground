resource "helm_release" "istio" {
  name  = "istio-base"
  chart = "base"
  repository = "https://istio-release.storage.googleapis.com/charts"
  version = "1.15.1"
  namespace = "istio-system"
  create_namespace = true
  description = "deploy istio base Helm chart using Terraform"
  replace = true
}

resource "helm_release" "istiod" {
  name  = "istiod"
  chart = "istiod "
  repository = "https://istio-release.storage.googleapis.com/charts"
  version = "1.15.1"
  namespace = "istio-system"
  create_namespace = true
  description = "deploy istio base Helm chart using Terraform"
  replace = true
}
module "eks" {
  source  = "./eks-cluster"
  account = var.account
  cluster-name = var.cluster-name
  role_arn = var.role_arn
  role_username = var.role_username
}

module "fluentd" {
  count  = var.fluentd ? 1 : 0
  source = "./services/fluentd"
}

module "prometheus-grafna" {
  count  = var.prometheus ? 1 : 0
  source = "./services/prometheus-grafana"
}

module "elk-stack" {
  count  = var.elk ? 1 : 0
  source = "./services/elk"
}

module "istio" {
  count  = var.istio ? 1 : 0
  source = "./services/istio"
}

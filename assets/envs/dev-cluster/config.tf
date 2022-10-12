provider "aws" {
  region = "eu-west-1"
}

provider "helm" {
    kubernetes {
        host                   = module.eks.host
        cluster_ca_certificate = module.eks.cluster_ca_certificate
        token                  = module.eks.token
    }
}

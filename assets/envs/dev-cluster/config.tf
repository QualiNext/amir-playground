terraform {
  backend "s3" {
    bucket  = "quali-devops-tfstate"
    region  = "eu-west-1"
    profile = "devops"
    key     = "k8s/amir-testing/terraform.tfstate"
  }

}
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
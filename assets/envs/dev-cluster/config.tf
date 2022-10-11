# terraform {
#   backend "s3" {
#     bucket  = "quali-devops-tfstate"
#     region  = "eu-west-1"
#     profile = "devops"
#     key     = "k8s/amir-testing/terraform.tfstate"
#   }

# }
provider "aws" {
  region = "eu-west-1"
  # assume_role {
  #   # role_arn     = "arn:aws:iam::123456789012:role/ROLE_NAME"
  #   role_arn = var.role_arn
  #   session_name = "SESSION_NAME"
  #   external_id  = "EXTERNAL_ID"
  # }
}

provider "helm" {
    kubernetes {
        host                   = module.eks.host
        cluster_ca_certificate = module.eks.cluster_ca_certificate
        token                  = module.eks.token
    }
}

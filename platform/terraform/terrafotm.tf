################################################################################
# Backend terraform Cloud
################################################################################

terraform {
  backend "remote" {
    organization = "langhae"

    workspaces {
      name = "eks-cluster-all"
    }
  }
}
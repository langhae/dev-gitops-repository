#!/usr/bin/env sh

# input variables
cluster_name=$1
multi05-eks-terraform
# kubectl update !
aws eks update-kubeconfig --region ap-southeast-2 --name $cluster_name

# install helm
curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 > get_helm.sh
chmod 700 get_helm.sh
./get_helm.sh
helm help


# Kubectl autocomplete
source <(kubectl completion bash)
echo "source <(kubectl completion bash)" >> ~/.bashrc
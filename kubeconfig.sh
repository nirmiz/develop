#!/bin/bash
AWS_REGION=eu-central-1
EKS_CLUSTER_NAME=eks-cluster
AWS_PROFILE=nirmizrahi
# The path where kubeconfig file would be stored. You can modify this to your preference 
export KUBECONFIG_PATH="~/.kube/config"

# Update the kubeconfig

aws eks --region $AWS_REGION update-kubeconfig --name $EKS_CLUSTER_NAME --kubeconfig $KUBECONFIG_PATH --profile $AWS_PROFILE
KUBERNETES_MASTER_ENDPOINT=$(kubectl config view --minify -o jsonpath='{.clusters[0].cluster.server}')
export KUBERNETES_MASTER=$KUBERNETES_MASTER_ENDPOINT
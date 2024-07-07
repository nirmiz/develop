### Helm install ArgoCD chart ###

resource "helm_release" "argocd" {
  name       = "argocd"
  namespace  = "argocd"
  create_namespace = true
  repository = "https://argoproj.github.io/argo-helm"
  chart      = "argo-cd"

  values = [
    <<EOF
server:
  service:
    type: LoadBalancer
EOF
  ]
  depends_on = [
    aws_eks_cluster.eks-cluster
  ]
}
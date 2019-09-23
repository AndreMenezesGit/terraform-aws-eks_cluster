output "cluster_endpoint" {
  description = "Endpoint for EKS control plane."
  value       = aws_eks_cluster.void-eks.endpoint
}

output "certificate_authority" {
  description = "A kubernetes configuration to authenticate to this EKS cluster."
  value       = base64decode(aws_eks_cluster.void-eks.certificate_authority.0.data)
}

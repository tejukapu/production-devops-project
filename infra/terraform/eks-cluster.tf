resource "aws_eks_cluster" "eks_cluster" {
  name     = "production-eks-cluster"
  role_arn = aws_iam_role.eks_cluster_role.arn

  vpc_config {
    subnet_ids = [
      aws_subnet.public_subnet.id,
      aws_subnet.private_subnet.id
    ]
  }

  depends_on = [
    aws_iam_role_policy_attachment.eks_cluster_policy
  ]

  tags = {
    Name        = "production-eks-cluster"
    Environment = "production"
    ManagedBy   = "terraform"
  }
}

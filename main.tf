resource "null_resource" "depends_on" {
  triggers = {
    instance = join(",",var.wait_for_resources)
  }
}

resource "aws_eks_cluster" "void-eks" {
  name     = var.cluster_name
  role_arn = var.iam_master_role_arn

  vpc_config {
    security_group_ids = flatten([var.sec_master_sg_id])
    subnet_ids         = flatten([var.vpc_subnet_id])
  }

  depends_on = []
}

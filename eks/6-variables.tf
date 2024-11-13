variable "env" {
  description = "Environment variable"
  type        = string
}

variable "eks_name" {
  description = "EKS Cluster name"
  type        = string
}

variable "eks_version" {
  description = "EKS Cluster version"
  type        = string
}

variable "subnet_ids" {
  description = "EKS Cluster subnet IDs"
  type        = list(string)
}

variable "node_iam_policies" {
  description = "EKS Cluster IAM policies to attach to EKS-managed nodes"
  type        = map(any)
  default = {
    1 = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
    2 = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
    3 = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
    4 = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
  }
}

variable "node_groups" {
  description = "EKS Cluster node groups"
  type        = map(any)
}

variable "enable_irsa" {
  description = "Determines whwther to create an OpenID Connect provider for EKS Cluster"
  type        = bool
  default     = true
}

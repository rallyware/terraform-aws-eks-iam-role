variable "service_account_name" {
  type        = string
  description = "Kubernetes ServiceAccount name"
}

variable "service_account_namespace" {
  type        = string
  description = "Kubernetes Namespace where service account is deployed"
}

variable "aws_account_number" {
  type        = string
  default     = null
  description = "AWS account number of EKS cluster owner. If an AWS account number is not provided, the current aws provider account number will be used."
}

variable "aws_partition" {
  type        = string
  default     = null
  description = "AWS partition: `aws`, `aws-cn`, or `aws-us-gov`"
}

variable "aws_iam_policy_document" {
  type        = string
  default     = "{}"
  description = "JSON string representation of the IAM policy for this service account"
}

variable "eks_cluster_oidc_issuer_url" {
  type        = string
  description = "OIDC issuer URL for the EKS cluster (initial \"https://\" may be omitted)"
}

variable "managed_iam_policy_enabled" {
  type        = bool
  description = "Create a managed IAM policy that can be reused. Set to `false` to use an inline IAM policy."
  default     = true
}

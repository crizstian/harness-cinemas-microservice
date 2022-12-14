variable "harness_platform_api_key" {
  sensitive = true
}
variable "harness_platform_account_id" {
  sensitive = true
}
variable "harness_connectors_crizstian_github_token" {
  sensitive = true
}
variable "harness_connectors_crizstian_docker_token" {
  sensitive = true
}
variable "harness_connectors_crizstian_artifactory_token" {
  sensitive = true
}

locals {
  harness_platform_projects = tomap({
    "cristian-cinemas-org" = var.cinemas_org
  })

  harness_platform_connectors = merge(
    local.cinemas_org_connectors
  )

  harness_platform_delegates = tomap({
    k8s = merge(local.cinemas_org_delegates.k8s)
  })
}

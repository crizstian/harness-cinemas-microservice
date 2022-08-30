variable "harness_platform_account_id" {
  sensitive = true
}
variable "harness_platform_api_key" {
  sensitive = true
}

locals {
  harness_platform_projects = tomap({
    "cinemas-org" = var.cristiab_lab_org_projects
  })

  harness_platform_connectors = merge(
    local.cinemas_org_connectors
  )

  harness_platform_delegates = tomap({
    k8s = merge(local.cinemas_org_delegates.k8s)
  })
}


variable "gitops_config" {
  type        = object({
    boostrap = object({
      argocd-config = object({
        project = string
        repo = string
        url = string
        path = string
      })
    })
    infrastructure = object({
      argocd-config = object({
        project = string
        repo = string
        url = string
        path = string
      })
      payload = object({
        repo = string
        url = string
        path = string
      })
    })
    services = object({
      argocd-config = object({
        project = string
        repo = string
        url = string
        path = string
      })
      payload = object({
        repo = string
        url = string
        path = string
      })
    })
    applications = object({
      argocd-config = object({
        project = string
        repo = string
        url = string
        path = string
      })
      payload = object({
        repo = string
        url = string
        path = string
      })
    })
  })
  description = "Config information regarding the gitops repo structure"
}

variable "git_credentials" {
  type = list(object({
    repo = string
    url = string
    username = string
    token = string
  }))
  description = "The credentials for the gitops repo(s)"
  sensitive   = true
}

variable "namespace" {
  type        = string
  description = "The namespace where the application should be deployed"
}

variable "kubeseal_cert" {
  type        = string
  description = "The certificate/public key used to encrypt the sealed secrets"
}

variable "server_name" {
  type        = string
  description = "The name of the server"
  default     = "default"
}
variable "db_server" {
  type        = string
  description = "Hostname of the database server for ODM"
  default = "161.202.168.37"
}

variable "cp_entitlement_key" {
  default = ""
}
variable "ldapUsername" {
  type        = string
  description = "Database User"
  default = "cn=root"
}

variable "ldapPassword" {
  type        = string
  description = "The namespace where the application should be deployed"
  default = "P@ssw0rd"
}

variable "odm_db_name" {
  type        = string
  description = "ODM Database Name"
  default = "odmdb"
}
variable "odm_db_port" {
  type        = string
  description = "Database Port"
  default = "50000"
}
variable "odm_db_type" {
  type        = string
  description = "Database Type"
  default = "db2"
}
variable "odm_image_repository" {
  type        = string
  description = "Repository URL "
  default = "cp.icr.io/cp/cp4a/odm"
}
variable "odm_image_tag" {
  type        = string
  description = "Image Tag"
  default = "21.0.3-IF002"
}
variable "odm_image_version" {
  type        = string
  description = "Image Version"
  default = "21.0.3"
}
variable "db_user" {
  type        = string
  description = "Database User"
  default = "db2inst1"
}
variable "db_password" {
  type        = string
  description = "The namespace where the application should be deployed"
  default = "P@ssw0rd"
}

variable "cp4ba_operator_namesapce"{
  type        = string
  description = "The namespace where the application should be deployed"
  default=""
}
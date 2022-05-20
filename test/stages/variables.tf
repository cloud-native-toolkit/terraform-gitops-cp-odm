
variable cluster_username { 
  type        = string
  description = "The username for AWS access"
  default     = ""
}

variable "cluster_password" {
  type        = string
  description = "The password for AWS access"
  default     = ""
}

variable "server_url" {
  type   = string
}

variable "bootstrap_prefix" {
  type = string
  default = ""
}

variable "namespace" {
  type        = string
  description = "Namespace for tools" 
  default ="cp-odm"
}

variable "cluster_name" {
  type        = string
  description = "The name of the cluster"
  default     = ""
}

variable "cluster_type" {
  type        = string
  description = "The type of cluster that should be created (openshift or kubernetes)"
  default     = ""
}

variable "cluster_exists" {
  type        = string
  description = "Flag indicating if the cluster already exists (true or false)"
  default     = "true"
}

variable "git_token" {
  type        = string
  description = "Git token"
}

variable "git_host" {
  type        = string
  default     = "github.com"
}

variable "git_type" {
  default = "github"
}

variable "git_org" {
  default = "cloud-native-toolkit-test"
}

variable "git_repo" {
  default = "git-module-test"
}

variable "gitops_namespace" {
  default = "openshift-gitops"
}

variable "git_username" {
}

variable "kubeseal_namespace" {
  default = "sealed-secrets"
}

variable "cp_entitlement_key" {
  default = ""
}
variable "db_server" {
  type        = string
  description = "Hostname of the database server for ODM"
  default = "161.202.168.37"
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

variable "ldapUsername" {
  type        = string
  description = "Database User"
  default = "root"
}

variable "ldapPassword" {
  type        = string
  description = "The namespace where the application should be deployed"
  default = "P@ssw0rd"
}
/*
variable "login_token" {
  type        = string
  
}
variable "ibmcloud_api_key" {
  type        = string
  
}
*/
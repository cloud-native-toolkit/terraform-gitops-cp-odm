
resource null_resource write_outputs {
  provisioner "local-exec" {
    command = "echo \"$${OUTPUT}\" > gitops-output.json"

    environment = {
      OUTPUT = jsonencode({
        name        = module.cp4ba.name
        branch      = module.cp4ba.branch
        namespace   = module.cp4ba.namespace
        server_name = module.cp4ba.server_name
        layer       = module.cp4ba.layer
        layer_dir   = module.cp4ba.layer == "infrastructure" ? "1-infrastructure" : (module.cp-odm.layer == "services" ? "2-services" : "3-applications")
        type        = module.cp4ba.type
      })
    }
  }
}


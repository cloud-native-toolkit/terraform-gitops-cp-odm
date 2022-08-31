
resource null_resource write_outputs {
  provisioner "local-exec" {
    command = "echo \"$${OUTPUT}\" > gitops-output.json"

    environment = {
      OUTPUT = jsonencode({
        name        = module.cp-odm.name
        branch      = module.cp-odm.branch
        namespace   = module.cp-odm.namespace
        server_name = module.cp-odm.server_name
        layer       = module.cp-odm.layer
        layer_dir   = module.cp-odm.layer == "infrastructure" ? "1-infrastructure" : (module.cp-odm.layer == "services" ? "2-services" : "3-applications")
        type        = module.cp-odm.type
      })
    }
  }
}


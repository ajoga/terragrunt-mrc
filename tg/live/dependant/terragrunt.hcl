include {
  path = find_in_parent_folders("root.hcl")
}
dependency "base" {
  config_path = "../base"

  # mock_outputs = {
  #   demo = 0
  # }
}

terraform {
  source = "git::https://github.com/ajoga/terragrunt-mrc.git//modules/foo"
}

inputs = {
    # foo = dependency.base.outputs.demo
}
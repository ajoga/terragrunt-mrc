include {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git::https://github.com/ajoga/terragrunt-mrc.git//modules/foo"
}

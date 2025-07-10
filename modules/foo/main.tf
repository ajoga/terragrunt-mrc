resource "local_file" "foo" {
  content  = "foo!"
  filename = "${path.module}/foo.bar"
}

output "dummy" { # needed for initial dependency resolution
  value = "dummy"
}

# output "demo" {
#   value = local_file.foo.file_permission
# }
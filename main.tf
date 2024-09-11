resource "local_file" "example" {
  content  = "Hello,there we are learning Terraform Today !"
  filename = "${path.module}/terraform_demo.txt"

}

output "file_path" {
  value = local_file.example.filename
}

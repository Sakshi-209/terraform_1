resource "local_file" "file-block" {
  content  = "${random_id.random_value.dec}"
  filename = "hello.py"
}
resource "local_file" "file-block1" {
  content  = local.con
  filename = "hello.py"
}
locals{
  con="<p>Hello Sakshi</p>"
}
resource "random_id" "random_value" {
  byte_length = 8
}

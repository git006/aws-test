# file modules/vpc/output.tf

output "subnet_id" {
  value = "${aws_subnet.main.id}"
}
output "ELB" {
	value = "${aws_elb.my-elb.dns_name}"
}
output "rds" {
  value = "${aws_db_instance.mariadb.endpoint}"
}

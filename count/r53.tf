resource "aws_route53_record" "www" {
  count   = 10
  zone_id = var.zone_id
  name    = "${var.instances[count.index]}.${var.domain_name}"  # here there is an interpolation search in google
  type    = "A"
  ttl     = "1"
  records = [aws_instance.example[count.index].private_ip]
}


# roboshop.daws.vinoddevops.online --> map to public ip

resource "aws_route53_record" "www" {
  zone_id = var.zone_id
  name    = "roboshop.${var.domain_name}"  # here there is an interpolation search in google
  type    = "A"
  ttl     = "1"
  records = [aws_instance.example[index(var.instances, "frontend")].public_ip]
}
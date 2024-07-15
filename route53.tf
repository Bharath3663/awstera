#resource "aws_route53_zone" "primary" {
 # name = var.domain_name
#}

# Define an A record
#resource "aws_route53_record" "www" {
  #zone_id = aws_route53_zone.primary.zone_id
  #name    = var.record_name
  #type    = "A"
  #ttl     = 300  # Time to live in seconds
 # records = [var.record_ip]
#}

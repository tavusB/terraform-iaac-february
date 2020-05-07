#create road53 record ===================================================================================================================

  resource "aws_route53_record" "www" {
    zone_id = "Z01456971ZQPMYD2GBC2L"
    name    = "www.tavusb.com"
    type    = "A"
    ttl     = "60"
    records = ["${aws_instance.web.public_ip}"]
  
  }
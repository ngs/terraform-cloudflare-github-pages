resource "cloudflare_dns_record" "ghpages" {
  zone_id = var.zone_id
  name    = var.name
  content = "${var.username}.github.io"
  type    = "CNAME"
  ttl     = 3600
  proxied = false
}

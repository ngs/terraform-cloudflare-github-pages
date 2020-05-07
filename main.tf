resource "cloudflare_record" "ghpages" {
  zone_id = var.zone_id
  name    = var.name
  value   = "${var.username}.github.io"
  type    = "CNAME"
  proxied = false
}

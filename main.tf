resource "cloudflare_record" "ghpages" {
  domain   = "${var.domain}"
  name     = "${var.name}"
  value   = "${var.username}.github.io"
  type    = "CNAME"
  proxied = false
}

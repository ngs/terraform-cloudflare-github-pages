resource "cloudflare_zone" "example" {
  zone = "example.com"
}

module "test-ghpage" {
  zone_id  = cloudflare_zone.example.id
  source   = "../"
  name     = "@"
  username = "ngs"
}


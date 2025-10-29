resource "cloudflare_zone" "example" {
  account_id = "dummy-account-id"
  zone       = "example.com"
}

module "test-ghpage" {
  zone_id  = cloudflare_zone.example.id
  source   = "../"
  name     = "@"
  username = "ngs"
}


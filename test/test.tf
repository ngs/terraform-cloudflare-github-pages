resource "cloudflare_zone" "example" {
  account = {
    id = "dummy-account-id"
  }
  name = "example.com"
}

module "test-ghpage" {
  zone_id  = cloudflare_zone.example.id
  source   = "../"
  name     = "@"
  username = "ngs"
}

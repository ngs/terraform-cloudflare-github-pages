# terraform-cloudflare-github-pages

CloudFlare Terraform module for setup GitHub Pages.

## Usage

```hcl
resource "cloudflare_zone" "example" {
  zone = "example.com"
}

module "ghpage" {
  zone_id  = cloudflare_zone.example.id
  source   = "ngs/github-pages/cloudflare"
  name     = "@"
  username = "ngs"
}
```

## Inputs

| Name       | Description                                     |
| ---------- | ----------------------------------------------- |
| `zone_id`  | The DNS zone ID to add the record to            |
| `name`     | The name of the record. Use `@` for root domain |
| `username` | GitHub username                                 |

## Author

[Atushi Nagase]

## License

MIT. See [LICENSE]

[atushi nagase]: https://ngs.io/
[license]: LICENSE

# terraform-cloudflare-github-pages

CloudFlare Terraform module for setup GitHub Pages.

## Usage

```hcl
module "github_page" {
	source = "ngs/github-pages/cloudflare"

	domain   = "myblog.tld"
	name     = "@"
	username = "ngs"
}
```

## Inputs

| Name       | Description                                     |
| ---------- | ----------------------------------------------- |
| `domain`   | The DNS zone to add the record to               |
| `name`     | The name of the record. Use `@` for root domain |
| `username` | GitHub username                                 |

## Author

[Atushi Nagase]

## License

MIT. See [LICENSE]

[Atushi Nagase]: https://ngs.io/
[LICENSE]: LICENSE
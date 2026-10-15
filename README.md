# headstraight4life.com

Static site for [Headstraight](https://open.spotify.com/artist/2vxXNAqqvKYz8UfREdGEN5), live at <https://headstraight4life.com>.

## Releases

- **Good Nature** (album, 2006)
- **Buried** (EP, 2004)

## Files

- `index.html` — the whole site (inline CSS, Spotify embed)
- `alexjaxx.jpg` — hero photo, also the Open Graph image
- `good-nature.jpg`, `buried.jpg` — release artwork

## Development

Open `index.html` in a browser; there is no build step.

Pre-commit hooks are configured in `.pre-commit-config.yaml`:

```sh
pre-commit install
```

## Deploy

Requires [just](https://github.com/casey/just) and AWS credentials with access to the S3 bucket and CloudFront distribution.

```sh
just deploy   # sync to s3://headstraight4life.com and invalidate CloudFront
just open     # open the live site
```

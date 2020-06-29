# Tencent Cloud CDN Purge Cache

This action purges cache for Tencent Cloud CDN via its Python SDK API.

## Environment Variables

To use this Github action, you need to set the following environment variables in your workflow:

| Name | Description | Required |
| --- | --- | --- |
| SECRET_ID | your Tencent Cloud access token Secret ID | Yes |
| SECRET_KEY | your Tencent Cloud access token Secret Key | Yes |
| PATHS | paths to purge cache for, separated with comma `,` | Yes |
| FLUSH_TYPE | `flush` (default) to purge only modified resources or `delete` to purge all | No |

## Example Usage

```yaml
uses: keithnull/tencent-cloud-cdn-purge-cache@v1.0
env:
  SECRET_ID: ${{ secrets.SECRET_ID}}
  SECRET_KEY: ${{ secrets.SECRET_KEY }}
  PATHS: "https://example.com/foo/,https://example.com/bar/"
  FLUSH_TYPE: "flush" # optional
```

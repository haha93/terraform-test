# GCP GitHub Secrets

The following secrets have been configured for GCP authentication:

- `GCP_SA_KEY`: Service Account Key for GCP authentication
- `GCP_PROJECT_ID`: GCP Project ID
- `GCP_REGION`: GCP Region
- `GCP_ZONE`: GCP Zone

## Usage in GitHub Actions

```yaml
jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: google-github-actions/auth@v1
        with:
          credentials_json: ${{ secrets.GCP_SA_KEY }}

      - uses: google-github-actions/setup-gcloud@v1
        with:
          project_id: ${{ secrets.GCP_PROJECT_ID }}
```

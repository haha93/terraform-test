# GCP Secrets Setup
## Secrets added:
- `GCP_SA_KEY`
- `GCP_PROJECT_ID`
- `GCP_REGION`
- `GCP_ZONE`

## Usage in GitHub Actions:
```yaml
jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: 'google-github-actions/auth@v1'
        with:
          credentials_json: ${{ secrets.GCP_SA_KEY }}
          
      - uses: 'google-github-actions/setup-gcloud@v1'
        with:
          project_id: ${{ secrets.GCP_PROJECT_ID }}
```

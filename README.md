# AWS Portfolio

AWSを利用して構築したインフラ環境・学習内容をまとめるポートフォリオです。

現在は、Amazon S3とAmazon CloudFrontを利用した静的Webサイトを構築し、
GitHub Actionsを利用したCI/CD環境まで実装しています。

---

## Architecture

```text
Developer
    |
    | git push
    v
GitHub Repository
    |
    v
GitHub Actions
    |
    | OIDC Authentication
    v
AWS IAM Role
    |
    v
Amazon S3
    |
    v
Amazon CloudFront
    |
    v
Users

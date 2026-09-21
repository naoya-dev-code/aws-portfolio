# AWS Portfolio

AWSを利用して構築した、インフラエンジニア向けのポートフォリオサイトです。

静的WebサイトをAmazon S3に保存し、Amazon CloudFrontを経由してHTTPSで配信しています。

GitHub ActionsとAWS IAM OIDCを利用したCI/CDを構築しており、`main`ブランチへのpushをトリガーに自動デプロイされます。

また、AWSインフラストラクチャはTerraformによってInfrastructure as Code（IaC）として管理しています。

---

## Architecture

```text
Developer
    |
    | git push
    v
GitHub
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
    | Origin Access Control (OAC)
    v
Amazon CloudFront
    |
    v
AWS WAF
    |
    v
User

provider "aws" {
  region  = "ap-northeast-1"
  profile = "naoya-sso"
}

provider "aws" {
  alias   = "us_east_1"
  region  = "us-east-1"
  profile = "naoya-sso"
}

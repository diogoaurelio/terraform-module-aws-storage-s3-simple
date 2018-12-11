Terraform AWS module for S3 Bucket
==================================

Generic repository for a terraform module for AWS S3 bucket

![Image of Terraform](https://i.imgur.com/Jj2T26b.jpg)

# Table of content

- [Introduction](#intro)
- [Usage](#usage)
- [Release log](#release-log)
- [Module versioning & git](#module-versioning-&-git)
- [Local terraform setup](#local-terraform-setup)
- [Authors/Contributors](#authorscontributors)


# Intro

Module that creates the most basic form of S3 bucket, optionally with object versioning enabled

# Usage

Example usage:

```hcl
module "dev_bucket" {
  source                            = "github.com/diogoaurelio/terraform-module-aws-storage-s3-simple"
  version                           = "v0.0.1"
  region                            = "eu-west-1"
  environment                       = "dev"
  project                           = "analytics"
  s3_bucket_name                    = "${var.environment}-${var.project}-mybucket"
  s3_bucket_acl                     = "log-delivery-write"
  versioning_enabled                = false
}

```


# Release log

Whenever you bump this module's version, please add a summary description of the changes performed, so that collaboration across developers becomes easier.

* version v0.0.1 - first module release

# Module versioning & git

To update this module please follow the following proceedure:

1) make your changes following the normal git workflow
2) after merging the your changes to master, comes the most important part, namely versioning using tags:

```bash
git tag v0.0.2
```

3) push the tag to the remote git repository:
```bash
git push origin master tag v0.0.2
```

# Local terraform setup

* [Install Terraform](https://www.terraform.io/)

```bash
brew install terraform
```

* In order to automatic format terraform code (and have it cleaner), we use pre-commit hook. To [install pre-commit](https://pre-commit.com/#install).
* Run [pre-commit install](https://pre-commit.com/#usage) to setup locally hook for terraform code cleanup.

```bash
pre-commit install
```


# Authors/Contributors

See the list of [contributors](https://github.com/diogoaurelio/terraform-module-aws-storage-s3-simple/graphs/contributors) who participated in this project.
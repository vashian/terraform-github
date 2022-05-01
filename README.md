Using Code to Create, Secure, and Manage Repositories.
Example of using Terraform provider for Github.

## Contents

- [What is github provider in terraform?](#what-is-github-provider-in-terraform)
- [About Resources](#about-resources)
- [How to use?](#how-to-use)
- [Variable](#variables)
- [Road map](#roadmap)

## What is Github provider in terraform?
The GitHub provider is used to interact with GitHub resources.

The provider allows you to manage your GitHub organization's members and teams easily. It needs to be configured with the proper credentials before it can be used.

## About Resources

* `github_repository`  provider setup. You need to provide username and token
* `github_branch`  allows you to create and manage branches within your repository.
* `github_repository_file` allows you to create and manage files within a GitHub repository.

## How to use?

* Install Terraform (0.10 or newer)
* Create your own terraform.tfvars and copy terraform.tfvars.example to terraform.tfvars
* Replace values in terraform.tfvars

Then you need to initialize terraform.

```bash
terraform init
```

now it's time to actually using apply.

```bash
terraform apply
```

For deleteing repo created to your account:
```bash
terraform destroy
```
## Variables
#### required
* `github_token` GitHub personal access token
* `owner` Github username
#### optional
* `license_template` For example "mit"
* `default_branch` The name of the default branch of the repository.
* `visibility` Can be public or private
* `gitignore_template` Use the name of the template without the extension.
* `file` The path of the file to manage.
* `name` The name of the repository.

## Roadmap

- [x] Create repository
- [x] Create branch
- [x] Touch file and make new commit 
- [ ] Create and manage issues
- [ ] Create and manage GitHub Actions secrets 

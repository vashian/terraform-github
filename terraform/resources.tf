resource "github_repository" "repo" {
  name               = var.repo.name
  visibility         = var.repo.visibility
  license_template   = var.repo.license_template
  gitignore_template = var.repo.gitignore_template
  description        = "This is demo repository created by terraform ✌️"
}

resource "github_branch" "branch" {
  repository = var.repo.name
  branch     = "feature-demo"
}

resource "github_repository_file" "work-on-repo" {
  overwrite_on_create = true
  file                = var.repo.file
  content             = "**/*.tfstate"
  commit_author       = "Terraform User"
  commit_message      = "Managed by Terraform"
  commit_email        = "terraform@example.com"
  branch              = var.repo.default_branch
  repository          = github_repository.repo.name
}
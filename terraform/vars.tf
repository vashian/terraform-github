variable "owner" {
  type        = string
  description = "Your GitHub username"
}

variable "github_token" {
  type        = string
  description = "Your GitHub personal access token"
}

variable "repo" {
  type        = map(any)
  description = "Your GitHub repository configuration"
  default = {
    "license_template"   = "mit"
    "default_branch"     = "main"
    "visibility"         = "public"
    "gitignore_template" = "Terraform"
    "file"               = ".gitignore"
    "name"               = "terraform-github-demo"
  }
}
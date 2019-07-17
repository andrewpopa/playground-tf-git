provider "github" {
  token        = "${var.github_token}"
  organization = "${var.github_organization}"
}

resource "github_organization_project" "project_for_new_org" {
  name = "A Organization Project"
  body = "This is a organization project."
}

resource "github_repository" "git-example" {
  name        = "git-example"
  description = "My awesome codebase"
  auto_init = true
  license_template = "mit"
}

resource "github_repository_collaborator" "git-example" {
  repository = "git-example"
  username   = "krastin"
  permission = "admin"
}

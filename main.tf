provider "github" {
  token        = "${var.github_token}"
  organization = "${var.github_organization}"
}

resource "github_organization_project" "project_for_new_org" {
  name = "A Organization Project"
  body = "This is a organization project."
}

variable "devops_build_runs" {
  description = <<EOT
Map of devops_build_runs, attributes below
Required:
    - build_pipeline_id
Optional:
    - defined_tags
    - display_name
    - freeform_tags
    - build_run_arguments (block):
        - items (required, block):
            - name (required)
            - value (required)
    - commit_info (block):
        - commit_hash (required)
        - repository_branch (required)
        - repository_url (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    build_pipeline_id = string
    defined_tags      = optional(map(string))
    display_name      = optional(string)
    freeform_tags     = optional(map(string))
    build_run_arguments = optional(object({
      items = list(object({
        name  = string
        value = string
      }))
    }))
    commit_info = optional(object({
      commit_hash       = string
      repository_branch = string
      repository_url    = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.devops_build_runs : (
        v.build_run_arguments == null || (length(v.build_run_arguments.items) >= 1)
      )
    ])
    error_message = "Each items list must contain at least 1 items"
  }
}


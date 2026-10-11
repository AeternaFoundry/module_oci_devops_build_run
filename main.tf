resource "oci_devops_build_run" "devops_build_runs" {
  for_each = var.devops_build_runs

  build_pipeline_id = each.value.build_pipeline_id
  defined_tags      = each.value.defined_tags
  display_name      = each.value.display_name
  freeform_tags     = each.value.freeform_tags

  dynamic "build_run_arguments" {
    for_each = each.value.build_run_arguments != null ? [each.value.build_run_arguments] : []
    content {
      dynamic "items" {
        for_each = build_run_arguments.value.items
        content {
          name  = items.value.name
          value = items.value.value
        }
      }
    }
  }

  dynamic "commit_info" {
    for_each = each.value.commit_info != null ? [each.value.commit_info] : []
    content {
      commit_hash       = commit_info.value.commit_hash
      repository_branch = commit_info.value.repository_branch
      repository_url    = commit_info.value.repository_url
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}


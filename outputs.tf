output "devops_build_runs_id" {
  description = "Map of id values across all devops_build_runs, keyed the same as var.devops_build_runs except keys with no id are omitted"
  value       = { for k, v in oci_devops_build_run.devops_build_runs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "devops_build_runs_build_outputs" {
  description = "Map of build_outputs values across all devops_build_runs, keyed the same as var.devops_build_runs except keys with no build_outputs are omitted"
  value       = { for k, v in oci_devops_build_run.devops_build_runs : k => v.build_outputs if v.build_outputs != null && length(v.build_outputs) > 0 }
}
output "devops_build_runs_build_pipeline_id" {
  description = "Map of build_pipeline_id values across all devops_build_runs, keyed the same as var.devops_build_runs except keys with no build_pipeline_id are omitted"
  value       = { for k, v in oci_devops_build_run.devops_build_runs : k => v.build_pipeline_id if v.build_pipeline_id != null && length(v.build_pipeline_id) > 0 }
}
output "devops_build_runs_build_run_arguments" {
  description = "Map of build_run_arguments values across all devops_build_runs, keyed the same as var.devops_build_runs except keys with no build_run_arguments are omitted"
  value       = { for k, v in oci_devops_build_run.devops_build_runs : k => one(v.build_run_arguments) if v.build_run_arguments != null && length(v.build_run_arguments) > 0 }
}
output "devops_build_runs_build_run_progress" {
  description = "Map of build_run_progress values across all devops_build_runs, keyed the same as var.devops_build_runs except keys with no build_run_progress are omitted"
  value       = { for k, v in oci_devops_build_run.devops_build_runs : k => v.build_run_progress if v.build_run_progress != null && length(v.build_run_progress) > 0 }
}
output "devops_build_runs_build_run_source" {
  description = "Map of build_run_source values across all devops_build_runs, keyed the same as var.devops_build_runs except keys with no build_run_source are omitted"
  value       = { for k, v in oci_devops_build_run.devops_build_runs : k => v.build_run_source if v.build_run_source != null && length(v.build_run_source) > 0 }
}
output "devops_build_runs_commit_info" {
  description = "Map of commit_info values across all devops_build_runs, keyed the same as var.devops_build_runs except keys with no commit_info are omitted"
  value       = { for k, v in oci_devops_build_run.devops_build_runs : k => one(v.commit_info) if v.commit_info != null && length(v.commit_info) > 0 }
}
output "devops_build_runs_compartment_id" {
  description = "Map of compartment_id values across all devops_build_runs, keyed the same as var.devops_build_runs except keys with no compartment_id are omitted"
  value       = { for k, v in oci_devops_build_run.devops_build_runs : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "devops_build_runs_defined_tags" {
  description = "Map of defined_tags values across all devops_build_runs, keyed the same as var.devops_build_runs except keys with no defined_tags are omitted"
  value       = { for k, v in oci_devops_build_run.devops_build_runs : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "devops_build_runs_display_name" {
  description = "Map of display_name values across all devops_build_runs, keyed the same as var.devops_build_runs except keys with no display_name are omitted"
  value       = { for k, v in oci_devops_build_run.devops_build_runs : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "devops_build_runs_freeform_tags" {
  description = "Map of freeform_tags values across all devops_build_runs, keyed the same as var.devops_build_runs except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_devops_build_run.devops_build_runs : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "devops_build_runs_lifecycle_details" {
  description = "Map of lifecycle_details values across all devops_build_runs, keyed the same as var.devops_build_runs except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_devops_build_run.devops_build_runs : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "devops_build_runs_project_id" {
  description = "Map of project_id values across all devops_build_runs, keyed the same as var.devops_build_runs except keys with no project_id are omitted"
  value       = { for k, v in oci_devops_build_run.devops_build_runs : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "devops_build_runs_state" {
  description = "Map of state values across all devops_build_runs, keyed the same as var.devops_build_runs except keys with no state are omitted"
  value       = { for k, v in oci_devops_build_run.devops_build_runs : k => v.state if v.state != null && length(v.state) > 0 }
}
output "devops_build_runs_system_tags" {
  description = "Map of system_tags values across all devops_build_runs, keyed the same as var.devops_build_runs except keys with no system_tags are omitted"
  value       = { for k, v in oci_devops_build_run.devops_build_runs : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "devops_build_runs_time_created" {
  description = "Map of time_created values across all devops_build_runs, keyed the same as var.devops_build_runs except keys with no time_created are omitted"
  value       = { for k, v in oci_devops_build_run.devops_build_runs : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "devops_build_runs_time_updated" {
  description = "Map of time_updated values across all devops_build_runs, keyed the same as var.devops_build_runs except keys with no time_updated are omitted"
  value       = { for k, v in oci_devops_build_run.devops_build_runs : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}


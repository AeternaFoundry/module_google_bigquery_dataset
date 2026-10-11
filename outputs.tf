output "bigquery_datasets_id" {
  description = "Map of id values across all bigquery_datasets, keyed the same as var.bigquery_datasets except keys with no id are omitted"
  value       = { for k, v in google_bigquery_dataset.bigquery_datasets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "bigquery_datasets_access" {
  description = "Map of access values across all bigquery_datasets, keyed the same as var.bigquery_datasets except keys with no access are omitted"
  value       = { for k, v in google_bigquery_dataset.bigquery_datasets : k => v.access if v.access != null && length(v.access) > 0 }
}
output "bigquery_datasets_creation_time" {
  description = "Map of creation_time values across all bigquery_datasets, keyed the same as var.bigquery_datasets except keys with no creation_time are omitted"
  value       = { for k, v in google_bigquery_dataset.bigquery_datasets : k => v.creation_time if v.creation_time != null }
}
output "bigquery_datasets_dataset_id" {
  description = "Map of dataset_id values across all bigquery_datasets, keyed the same as var.bigquery_datasets except keys with no dataset_id are omitted"
  value       = { for k, v in google_bigquery_dataset.bigquery_datasets : k => v.dataset_id if v.dataset_id != null && length(v.dataset_id) > 0 }
}
output "bigquery_datasets_default_collation" {
  description = "Map of default_collation values across all bigquery_datasets, keyed the same as var.bigquery_datasets except keys with no default_collation are omitted"
  value       = { for k, v in google_bigquery_dataset.bigquery_datasets : k => v.default_collation if v.default_collation != null && length(v.default_collation) > 0 }
}
output "bigquery_datasets_default_encryption_configuration" {
  description = "Map of default_encryption_configuration values across all bigquery_datasets, keyed the same as var.bigquery_datasets except keys with no default_encryption_configuration are omitted"
  value       = { for k, v in google_bigquery_dataset.bigquery_datasets : k => one(v.default_encryption_configuration) if v.default_encryption_configuration != null && length(v.default_encryption_configuration) > 0 }
}
output "bigquery_datasets_default_partition_expiration_ms" {
  description = "Map of default_partition_expiration_ms values across all bigquery_datasets, keyed the same as var.bigquery_datasets except keys with no default_partition_expiration_ms are omitted"
  value       = { for k, v in google_bigquery_dataset.bigquery_datasets : k => v.default_partition_expiration_ms if v.default_partition_expiration_ms != null }
}
output "bigquery_datasets_default_table_expiration_ms" {
  description = "Map of default_table_expiration_ms values across all bigquery_datasets, keyed the same as var.bigquery_datasets except keys with no default_table_expiration_ms are omitted"
  value       = { for k, v in google_bigquery_dataset.bigquery_datasets : k => v.default_table_expiration_ms if v.default_table_expiration_ms != null }
}
output "bigquery_datasets_delete_contents_on_destroy" {
  description = "Map of delete_contents_on_destroy values across all bigquery_datasets, keyed the same as var.bigquery_datasets except keys with no delete_contents_on_destroy are omitted"
  value       = { for k, v in google_bigquery_dataset.bigquery_datasets : k => v.delete_contents_on_destroy if v.delete_contents_on_destroy != null }
}
output "bigquery_datasets_deletion_policy" {
  description = "Map of deletion_policy values across all bigquery_datasets, keyed the same as var.bigquery_datasets except keys with no deletion_policy are omitted"
  value       = { for k, v in google_bigquery_dataset.bigquery_datasets : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "bigquery_datasets_description" {
  description = "Map of description values across all bigquery_datasets, keyed the same as var.bigquery_datasets except keys with no description are omitted"
  value       = { for k, v in google_bigquery_dataset.bigquery_datasets : k => v.description if v.description != null && length(v.description) > 0 }
}
output "bigquery_datasets_effective_labels" {
  description = "Map of effective_labels values across all bigquery_datasets, keyed the same as var.bigquery_datasets except keys with no effective_labels are omitted"
  value       = { for k, v in google_bigquery_dataset.bigquery_datasets : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "bigquery_datasets_etag" {
  description = "Map of etag values across all bigquery_datasets, keyed the same as var.bigquery_datasets except keys with no etag are omitted"
  value       = { for k, v in google_bigquery_dataset.bigquery_datasets : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "bigquery_datasets_external_catalog_dataset_options" {
  description = "Map of external_catalog_dataset_options values across all bigquery_datasets, keyed the same as var.bigquery_datasets except keys with no external_catalog_dataset_options are omitted"
  value       = { for k, v in google_bigquery_dataset.bigquery_datasets : k => one(v.external_catalog_dataset_options) if v.external_catalog_dataset_options != null && length(v.external_catalog_dataset_options) > 0 }
}
output "bigquery_datasets_external_dataset_reference" {
  description = "Map of external_dataset_reference values across all bigquery_datasets, keyed the same as var.bigquery_datasets except keys with no external_dataset_reference are omitted"
  value       = { for k, v in google_bigquery_dataset.bigquery_datasets : k => one(v.external_dataset_reference) if v.external_dataset_reference != null && length(v.external_dataset_reference) > 0 }
}
output "bigquery_datasets_friendly_name" {
  description = "Map of friendly_name values across all bigquery_datasets, keyed the same as var.bigquery_datasets except keys with no friendly_name are omitted"
  value       = { for k, v in google_bigquery_dataset.bigquery_datasets : k => v.friendly_name if v.friendly_name != null && length(v.friendly_name) > 0 }
}
output "bigquery_datasets_is_case_insensitive" {
  description = "Map of is_case_insensitive values across all bigquery_datasets, keyed the same as var.bigquery_datasets except keys with no is_case_insensitive are omitted"
  value       = { for k, v in google_bigquery_dataset.bigquery_datasets : k => v.is_case_insensitive if v.is_case_insensitive != null }
}
output "bigquery_datasets_labels" {
  description = "Map of labels values across all bigquery_datasets, keyed the same as var.bigquery_datasets except keys with no labels are omitted"
  value       = { for k, v in google_bigquery_dataset.bigquery_datasets : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "bigquery_datasets_last_modified_time" {
  description = "Map of last_modified_time values across all bigquery_datasets, keyed the same as var.bigquery_datasets except keys with no last_modified_time are omitted"
  value       = { for k, v in google_bigquery_dataset.bigquery_datasets : k => v.last_modified_time if v.last_modified_time != null }
}
output "bigquery_datasets_location" {
  description = "Map of location values across all bigquery_datasets, keyed the same as var.bigquery_datasets except keys with no location are omitted"
  value       = { for k, v in google_bigquery_dataset.bigquery_datasets : k => v.location if v.location != null && length(v.location) > 0 }
}
output "bigquery_datasets_max_time_travel_hours" {
  description = "Map of max_time_travel_hours values across all bigquery_datasets, keyed the same as var.bigquery_datasets except keys with no max_time_travel_hours are omitted"
  value       = { for k, v in google_bigquery_dataset.bigquery_datasets : k => v.max_time_travel_hours if v.max_time_travel_hours != null && length(v.max_time_travel_hours) > 0 }
}
output "bigquery_datasets_project" {
  description = "Map of project values across all bigquery_datasets, keyed the same as var.bigquery_datasets except keys with no project are omitted"
  value       = { for k, v in google_bigquery_dataset.bigquery_datasets : k => v.project if v.project != null && length(v.project) > 0 }
}
output "bigquery_datasets_resource_tags" {
  description = "Map of resource_tags values across all bigquery_datasets, keyed the same as var.bigquery_datasets except keys with no resource_tags are omitted"
  value       = { for k, v in google_bigquery_dataset.bigquery_datasets : k => v.resource_tags if v.resource_tags != null && length(v.resource_tags) > 0 }
}
output "bigquery_datasets_self_link" {
  description = "Map of self_link values across all bigquery_datasets, keyed the same as var.bigquery_datasets except keys with no self_link are omitted"
  value       = { for k, v in google_bigquery_dataset.bigquery_datasets : k => v.self_link if v.self_link != null && length(v.self_link) > 0 }
}
output "bigquery_datasets_storage_billing_model" {
  description = "Map of storage_billing_model values across all bigquery_datasets, keyed the same as var.bigquery_datasets except keys with no storage_billing_model are omitted"
  value       = { for k, v in google_bigquery_dataset.bigquery_datasets : k => v.storage_billing_model if v.storage_billing_model != null && length(v.storage_billing_model) > 0 }
}
output "bigquery_datasets_terraform_labels" {
  description = "Map of terraform_labels values across all bigquery_datasets, keyed the same as var.bigquery_datasets except keys with no terraform_labels are omitted"
  value       = { for k, v in google_bigquery_dataset.bigquery_datasets : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}


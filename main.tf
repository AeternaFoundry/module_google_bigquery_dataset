resource "google_bigquery_dataset" "bigquery_datasets" {
  for_each = var.bigquery_datasets

  dataset_id                      = each.value.dataset_id
  default_collation               = each.value.default_collation
  default_partition_expiration_ms = each.value.default_partition_expiration_ms
  default_table_expiration_ms     = each.value.default_table_expiration_ms
  delete_contents_on_destroy      = each.value.delete_contents_on_destroy
  deletion_policy                 = each.value.deletion_policy
  description                     = each.value.description
  friendly_name                   = each.value.friendly_name
  is_case_insensitive             = each.value.is_case_insensitive
  labels                          = each.value.labels
  location                        = each.value.location
  max_time_travel_hours           = each.value.max_time_travel_hours
  project                         = each.value.project
  resource_tags                   = each.value.resource_tags
  storage_billing_model           = each.value.storage_billing_model

  dynamic "access" {
    for_each = each.value.access != null ? each.value.access : []
    content {
      dynamic "condition" {
        for_each = access.value.condition != null ? [access.value.condition] : []
        content {
          description = condition.value.description
          expression  = condition.value.expression
          location    = condition.value.location
          title       = condition.value.title
        }
      }
      dynamic "dataset" {
        for_each = access.value.dataset != null ? [access.value.dataset] : []
        content {
          dataset {
            dataset_id = dataset.value.dataset.dataset_id
            project_id = dataset.value.dataset.project_id
          }
          target_types = dataset.value.target_types
        }
      }
      domain         = access.value.domain
      group_by_email = access.value.group_by_email
      iam_member     = access.value.iam_member
      role           = access.value.role
      dynamic "routine" {
        for_each = access.value.routine != null ? [access.value.routine] : []
        content {
          dataset_id = routine.value.dataset_id
          project_id = routine.value.project_id
          routine_id = routine.value.routine_id
        }
      }
      special_group = access.value.special_group
      user_by_email = access.value.user_by_email
      dynamic "view" {
        for_each = access.value.view != null ? [access.value.view] : []
        content {
          dataset_id = view.value.dataset_id
          project_id = view.value.project_id
          table_id   = view.value.table_id
        }
      }
    }
  }

  dynamic "default_encryption_configuration" {
    for_each = each.value.default_encryption_configuration != null ? [each.value.default_encryption_configuration] : []
    content {
      kms_key_name = default_encryption_configuration.value.kms_key_name
    }
  }

  dynamic "external_catalog_dataset_options" {
    for_each = each.value.external_catalog_dataset_options != null ? [each.value.external_catalog_dataset_options] : []
    content {
      default_storage_location_uri = external_catalog_dataset_options.value.default_storage_location_uri
      parameters                   = external_catalog_dataset_options.value.parameters
    }
  }

  dynamic "external_dataset_reference" {
    for_each = each.value.external_dataset_reference != null ? [each.value.external_dataset_reference] : []
    content {
      connection      = external_dataset_reference.value.connection
      external_source = external_dataset_reference.value.external_source
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


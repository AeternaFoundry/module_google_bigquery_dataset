variable "bigquery_datasets" {
  description = <<EOT
Map of bigquery_datasets, attributes below
Required:
    - dataset_id
Optional:
    - default_collation
    - default_partition_expiration_ms
    - default_table_expiration_ms
    - delete_contents_on_destroy
    - deletion_policy
    - description
    - friendly_name
    - is_case_insensitive
    - labels
    - location
    - max_time_travel_hours
    - project
    - resource_tags
    - storage_billing_model
    - access (block):
        - condition (optional, block):
            - description (optional)
            - expression (required)
            - location (optional)
            - title (optional)
        - dataset (optional, block):
            - dataset (required, block):
                - dataset_id (required)
                - project_id (required)
            - target_types (required)
        - domain (optional)
        - group_by_email (optional)
        - iam_member (optional)
        - role (optional)
        - routine (optional, block):
            - dataset_id (required)
            - project_id (required)
            - routine_id (required)
        - special_group (optional)
        - user_by_email (optional)
        - view (optional, block):
            - dataset_id (required)
            - project_id (required)
            - table_id (required)
    - default_encryption_configuration (block):
        - kms_key_name (required)
    - external_catalog_dataset_options (block):
        - default_storage_location_uri (optional)
        - parameters (optional)
    - external_dataset_reference (block):
        - connection (required)
        - external_source (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    dataset_id                      = string
    default_collation               = optional(string)
    default_partition_expiration_ms = optional(number)
    default_table_expiration_ms     = optional(number)
    delete_contents_on_destroy      = optional(bool)
    deletion_policy                 = optional(string)
    description                     = optional(string)
    friendly_name                   = optional(string)
    is_case_insensitive             = optional(bool)
    labels                          = optional(map(string))
    location                        = optional(string)
    max_time_travel_hours           = optional(string)
    project                         = optional(string)
    resource_tags                   = optional(map(string))
    storage_billing_model           = optional(string)
    access = optional(list(object({
      condition = optional(object({
        description = optional(string)
        expression  = string
        location    = optional(string)
        title       = optional(string)
      }))
      dataset = optional(object({
        dataset = object({
          dataset_id = string
          project_id = string
        })
        target_types = list(string)
      }))
      domain         = optional(string)
      group_by_email = optional(string)
      iam_member     = optional(string)
      role           = optional(string)
      routine = optional(object({
        dataset_id = string
        project_id = string
        routine_id = string
      }))
      special_group = optional(string)
      user_by_email = optional(string)
      view = optional(object({
        dataset_id = string
        project_id = string
        table_id   = string
      }))
    })))
    default_encryption_configuration = optional(object({
      kms_key_name = string
    }))
    external_catalog_dataset_options = optional(object({
      default_storage_location_uri = optional(string)
      parameters                   = optional(map(string))
    }))
    external_dataset_reference = optional(object({
      connection      = string
      external_source = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.bigquery_datasets : (
        length(v.dataset_id) <= 1024
      )
    ])
    error_message = "[from validateDatasetId: invalid when len(value) > 1024]"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}


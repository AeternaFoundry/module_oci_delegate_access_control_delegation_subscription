variable "delegate_access_control_delegation_subscriptions" {
  description = <<EOT
Map of delegate_access_control_delegation_subscriptions, attributes below
Required:
    - compartment_id
    - service_provider_id
    - subscribed_service_type
Optional:
    - defined_tags
    - description
    - freeform_tags
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id          = string
    service_provider_id     = string
    subscribed_service_type = string
    defined_tags            = optional(map(string))
    description             = optional(string)
    freeform_tags           = optional(map(string))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}


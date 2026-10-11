resource "oci_delegate_access_control_delegation_subscription" "delegate_access_control_delegation_subscriptions" {
  for_each = var.delegate_access_control_delegation_subscriptions

  compartment_id          = each.value.compartment_id
  service_provider_id     = each.value.service_provider_id
  subscribed_service_type = each.value.subscribed_service_type
  defined_tags            = each.value.defined_tags
  description             = each.value.description
  freeform_tags           = each.value.freeform_tags

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}


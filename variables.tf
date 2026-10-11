variable "ec2_transit_gateway_route_table_routes_lookup" {
  description = <<EOT
Map of ec2_transit_gateway_route_table_routes_lookup, attributes below
Required:
    - transit_gateway_route_table_id
    - filter (block):
        - name (required)
        - values (required)
Optional:
    - region
EOT

  type = map(object({
    transit_gateway_route_table_id = string
    region                         = optional(string)
    filter = list(object({
      name   = string
      values = set(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.ec2_transit_gateway_route_table_routes_lookup : (
        length(v.filter) >= 1
      )
    ])
    error_message = "Each filter list must contain at least 1 items"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}


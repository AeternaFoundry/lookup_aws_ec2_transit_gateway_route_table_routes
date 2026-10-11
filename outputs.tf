output "ec2_transit_gateway_route_table_routes_lookup_id" {
  description = "Map of id values across all ec2_transit_gateway_route_table_routes_lookup, keyed the same as var.ec2_transit_gateway_route_table_routes_lookup"
  value       = { for k, v in data.aws_ec2_transit_gateway_route_table_routes.ec2_transit_gateway_route_table_routes_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ec2_transit_gateway_route_table_routes_lookup_filter" {
  description = "Map of filter values across all ec2_transit_gateway_route_table_routes_lookup, keyed the same as var.ec2_transit_gateway_route_table_routes_lookup"
  value       = { for k, v in data.aws_ec2_transit_gateway_route_table_routes.ec2_transit_gateway_route_table_routes_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "ec2_transit_gateway_route_table_routes_lookup_region" {
  description = "Map of region values across all ec2_transit_gateway_route_table_routes_lookup, keyed the same as var.ec2_transit_gateway_route_table_routes_lookup"
  value       = { for k, v in data.aws_ec2_transit_gateway_route_table_routes.ec2_transit_gateway_route_table_routes_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}
output "ec2_transit_gateway_route_table_routes_lookup_routes" {
  description = "Map of routes values across all ec2_transit_gateway_route_table_routes_lookup, keyed the same as var.ec2_transit_gateway_route_table_routes_lookup"
  value       = { for k, v in data.aws_ec2_transit_gateway_route_table_routes.ec2_transit_gateway_route_table_routes_lookup : k => v.routes if v.routes != null && length(v.routes) > 0 }
}
output "ec2_transit_gateway_route_table_routes_lookup_transit_gateway_route_table_id" {
  description = "Map of transit_gateway_route_table_id values across all ec2_transit_gateway_route_table_routes_lookup, keyed the same as var.ec2_transit_gateway_route_table_routes_lookup"
  value       = { for k, v in data.aws_ec2_transit_gateway_route_table_routes.ec2_transit_gateway_route_table_routes_lookup : k => v.transit_gateway_route_table_id if v.transit_gateway_route_table_id != null && length(v.transit_gateway_route_table_id) > 0 }
}


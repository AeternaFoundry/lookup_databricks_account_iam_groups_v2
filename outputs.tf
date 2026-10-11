output "account_iam_groups_v2_lookup_filter" {
  description = "Map of filter values across all account_iam_groups_v2_lookup, keyed the same as var.account_iam_groups_v2_lookup except keys with no filter are omitted"
  value       = { for k, v in data.databricks_account_iam_groups_v2.account_iam_groups_v2_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "account_iam_groups_v2_lookup_groups" {
  description = "Map of groups values across all account_iam_groups_v2_lookup, keyed the same as var.account_iam_groups_v2_lookup except keys with no groups are omitted"
  value       = { for k, v in data.databricks_account_iam_groups_v2.account_iam_groups_v2_lookup : k => v.groups if v.groups != null && length(v.groups) > 0 }
}
output "account_iam_groups_v2_lookup_page_size" {
  description = "Map of page_size values across all account_iam_groups_v2_lookup, keyed the same as var.account_iam_groups_v2_lookup except keys with no page_size are omitted"
  value       = { for k, v in data.databricks_account_iam_groups_v2.account_iam_groups_v2_lookup : k => v.page_size if v.page_size != null }
}


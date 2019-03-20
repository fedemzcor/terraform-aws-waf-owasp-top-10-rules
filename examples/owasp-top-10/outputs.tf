output "rule_group_id" {
  description = "AWS WAF Rule Group which contains all rules for OWASP Top 10 protection."
  value       = "${module.owasp_top_10.rule_group_id}"
}

output "01_sql_injection_rule_id" {
  description = "AWS WAF Rule which mitigates SQL Injection Attacks."
  value       = "${module.owasp_top_10.01_sql_injection_rule_id}"
}

output "02_auth_token_rule_id" {
  description = "AWS WAF Rule which blacklists bad/hijacked JWT tokens or session IDs."
  value       = "${module.owasp_top_10.02_auth_token_rule_id}"
}

output "03_xss_rule_id" {
  description = "AWS WAF Rule which mitigates Cross Site Scripting Attacks."
  value       = "${module.owasp_top_10.03_xss_rule_id}"
}

output "04_paths_rule_id" {
  description = "AWS WAF Rule which mitigates Path Traversal, LFI, RFI."
  value       = "${module.owasp_top_10.04_paths_rule_id}"
}

output "06_php_insecure_rule_id" {
  description = "AWS WAF Rule which mitigates PHP Specific Security Misconfigurations."
  value       = "${module.owasp_top_10.06_php_insecure_rule_id}"
}

output "07_size_restriction_rule_id" {
  description = "AWS WAF Rule which mitigates abnormal requests via size restrictions."
  value       = "${module.owasp_top_10.07_size_restriction_rule_id}"
}

output "08_csrf_rule_id" {
  description = "AWS WAF Rule which enforces the presence of CSRF token in request header."
  value       = "${module.owasp_top_10.08_csrf_rule_id}"
}

output "09_server_side_include_rule_id" {
  description = "AWS WAF Rule which blocks request patterns for webroot objects that shouldn't be directly accessible."
  value       = "${module.owasp_top_10.09_server_side_include_rule_id}"
}

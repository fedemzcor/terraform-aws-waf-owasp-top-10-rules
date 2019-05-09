module "owasp_top_10" {
  # This module is published on the registry: https://registry.terraform.io/modules/traveloka/waf-owasp-top-10-rules
  source  = "traveloka/waf-owasp-top-10-rules/aws"
  version = "0.1.0"

  # For a better understanding of what are those parameters mean,
  # please read the description of each variable in the variables.tf file:
  # https://github.com/traveloka/terraform-aws-waf-owasp-top-10-rules/blob/master/variables.tf 

  product_domain                 = "tsi"
  service_name                   = "tsiwaf"
  environment                    = "staging"
  description                    = "OWASP Top 10 rules for tsiwaf"
  target_scope                   = "global"
  create_rule_group              = "true"
  max_expected_uri_size          = "512"
  max_expected_query_string_size = "1024"
  max_expected_body_size         = "4096"
  max_expected_cookie_size       = "4093"
  csrf_expected_header           = "x-csrf-token"
  csrf_expected_size             = "36"
}

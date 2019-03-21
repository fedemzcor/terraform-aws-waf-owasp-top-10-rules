# terraform-aws-waf-owasp-top-10-rules
A Terraform module to create AWF WAF Rules for OWASP Top 10 security risks protection.

This will only create match sets, rules, and a rule group (optional).
The resources cannot be used without WebACL, which is not covered by this module.

## Examples
* [owasp-top-10](examples/owasp-top-10)

## Related Modules
* [terraform-aws-waf-webacl-supporting-resources](https://github.com/traveloka/terraform-aws-waf-webacl-supporting-resources)

## Author
[Rafi Kurnia Putra](https://github.com/rafikurnia)

## License
Apache 2 Licensed. See LICENSE for full details.
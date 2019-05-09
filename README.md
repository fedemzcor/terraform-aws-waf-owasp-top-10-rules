# terraform-aws-waf-owasp-top-10-rules
OWASP Top 10 Most Critical Web Application Security Risks is a powerful awareness document for web application security. It represents a broad consensus about the most critical security risks to web applications. Project members include a variety of security experts from around the world who have shared their expertise to produce this list[[1]](https://www.owasp.org/index.php/Category:OWASP_Top_Ten_Project). You can read the document that they published here: [[2]](https://www.owasp.org/images/7/72/OWASP_Top_10-2017_%28en%29.pdf.pdf).

This is a Terraform module which creates AWF WAF resources for protection of your resources from the OWASP Top 10 Security Risks. This module is based on the whitepaper that AWS provides. The whitepaper tells how to use AWS WAF to mitigate those attacks[[3]](https://d0.awsstatic.com/whitepapers/Security/aws-waf-owasp.pdf)[[4]](https://aws.amazon.com/about-aws/whats-new/2017/07/use-aws-waf-to-mitigate-owasps-top-10-web-application-vulnerabilities/).

This module will only create match-sets[[5]](https://docs.aws.amazon.com/waf/latest/developerguide/web-acl-create-condition.html), rules[[6]](https://docs.aws.amazon.com/waf/latest/developerguide/web-acl-rules.html), and a rule group (optional)[[7]](https://docs.aws.amazon.com/waf/latest/developerguide/working-with-rule-groups.html).
Those resources cannot be used without WebACL[[8]](https://docs.aws.amazon.com/waf/latest/developerguide/web-acl-working-with.html), which is not covered by this module.

To see the example on how to provision the resources only, check [Examples](#examples) section.

But to see the example on how to use this module together with WebACL to fully protect your application, see this page: [[9]](https://github.com/traveloka/terraform-aws-waf-webacl-supporting-resources/tree/master/examples)

References
* [1] : https://www.owasp.org/index.php/Category:OWASP_Top_Ten_Project
* [2] : https://www.owasp.org/images/7/72/OWASP_Top_10-2017_%28en%29.pdf.pdf
* [3] : https://d0.awsstatic.com/whitepapers/Security/aws-waf-owasp.pdf
* [4] : https://aws.amazon.com/about-aws/whats-new/2017/07/use-aws-waf-to-mitigate-owasps-top-10-web-application-vulnerabilities/
* [5] : https://docs.aws.amazon.com/waf/latest/developerguide/web-acl-create-condition.html
* [6] : https://docs.aws.amazon.com/waf/latest/developerguide/web-acl-rules.html
* [7] : https://docs.aws.amazon.com/waf/latest/developerguide/working-with-rule-groups.html
* [8] : https://docs.aws.amazon.com/waf/latest/developerguide/web-acl-working-with.html
* [9] : https://github.com/traveloka/terraform-aws-waf-webacl-supporting-resources/tree/master/examples

## FAQ
1. **Can I use only some of the rules?** *Yes you can. This module will outputs the rules' ID. Attach to WebACL you created only the IDs of the rules that you want.*
2. **Can I provision only some of the rules?** *No you can't. If you really want to do it, the only solution is to copy-paste match-sets and rules code manually. You must aware that by doing that you will lose support from maintainer of this module.*
3. **Can I modify some match-sets of a rule?** *No you can't. The same answer to answer question number 2. But if you found something need to be fixed, e.g. match-sets causing lots of false positive, please don't hesitate to create an issue or a pull request to this repository!*

## Examples
* [owasp-top-10](examples/owasp-top-10)

## Related Modules
* [terraform-aws-waf-webacl-supporting-resources](https://github.com/traveloka/terraform-aws-waf-webacl-supporting-resources)

## Author
[Rafi Kurnia Putra](https://github.com/rafikurnia)

## License
Apache 2 Licensed. See LICENSE for full details.
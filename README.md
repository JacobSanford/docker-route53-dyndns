# jacobsanford/route53-dyndns
Docker container : Provides a simple dynamic DNS creation and update service via [Amazon Route53](http://aws.amazon.com/route53/) and A (alias/subdomain) records.

## Usage
```
docker run --rm \
    --name route53 \
    -e AWS_ACCESS_KEY_ID= \
    -e AWS_SECRET_ACCESS_KEY= \
    -e AWS_CONNECTION_REGION=us-east-1 \
    -e ROUTE53_DOMAIN_A_RECORD= \
    -e ROUTE53_IP_URL= \
    -e ROUTE53_UPDATE_FREQUENCY=10800 \
    jacobsanford/route53-dyndns
```

## Required Environment Variables
* `AWS_ACCESS_KEY_ID` - An AWS Access Key
* `AWS_SECRET_ACCESS_KEY` - An AWS Secret Key
* `AWS_CONNECTION_REGION` - The AWS region for connections
* `ROUTE53_DOMAIN_A_RECORD` - The A record to update, such as myhouse.domain.com
* `ROUTE53_IP_URL` - A URL that returns the current IP address within the HTML of the page. Regex is used to find the first IP-like-string on the page.
* `ROUTE53_UPDATE_FREQUENCY` - The frequency (in seconds) to check for updates. Unless you have very specific needs, consider using a very large value here.

## License
- Route53 Dynamic DNS is licensed under the MIT License:
  - http://opensource.org/licenses/mit-license.html
- Attribution is not required, but much appreciated:
  - `Route53 Dynamic DNS by Jacob Sanford`

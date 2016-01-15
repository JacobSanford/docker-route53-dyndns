#!/bin/sh
while :
do
  /app/r53dyndns.py -v -U $ROUTE53_IP_URL -R $ROUTE53_DOMAIN_A_RECORD
  echo "Program has been running for $ROUTE53_UPDATE_FREQUENCY seconds..."
  sleep $ROUTE53_UPDATE_FREQUENCY
done

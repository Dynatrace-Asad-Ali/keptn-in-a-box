#!/bin/bash
echo "Enter DT_TENENT. Do not nnclude https"
read dt_tenant
echo "Enter DT_PAAS_TOKEN"
read dt_paas_token
echo "Enter DT_API_TOKEN"
read dt_api_token
sed -i "s/TENANT=/TENANT=https\:\/\/$dt_tenant/g" ./keptn-in-a-box.sh
sed -i "s/PAASTOKEN=/PAASTOKEN=$dt_paas_token/g" ./keptn-in-a-box.sh
sed -i "s/APITOKEN=/APITOKEN=$dt_api_token/g" ./keptn-in-a-box.sh

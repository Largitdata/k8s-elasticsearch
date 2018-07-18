#!/bin/sh

if [ ! -z $MY_POD_ID ]; then
    exit 10
fi
return_code=0

curl $MY_POD_IP:9200/health_check_idx/_analyze?pretty -H 'Content-Type: application/json' \
       -d '{"analyzer": "ik_smart_snow", "text": "柯文哲"}' 2>/dev/null \
   | grep "柯文哲" >/dev/null 2>&1

if [ $? -eq 0 ]; then
    echo "OK"
else
    echo "FAILED"
    return_code=100
fi

exit $return_code

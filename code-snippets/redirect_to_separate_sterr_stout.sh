#!/bin/sh
for i in `seq 1 20` ; \
do echo "$i to out" >> out.file ; \
   echo "$i to err" >&2 >> out.err ; done

cd /opt/twittermineworker/current && /usr/local/bin/node ./index.js \
  >> /opt/twittermineworker/shared/log/tmw_api.log \
 2>> /opt/twittermineworker/shared/log/tmw_api.err.log



"service":"ntp","servers":["0.us.pool.ntp.org","1.us.pool.ntp.org"]}

"ntp":{"is_server":false,"service":"ntp","servers":["0.us.pool.ntp.org","1.us.pool.ntp.org"]},
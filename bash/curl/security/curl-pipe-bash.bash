#!/bin/bash

# ruleid: curl-pipe-bash
bash <(curl -Ls "https://raw.githubusercontent.com/pusox/pusox/main/script/_A.sh")

# ruleid: curl-pipe-bash
curl http://10.110.1.200/deployment/scripts/SLAVE00-flight-setup.bash | /bin/bash -x | tee -a /tmp/mainscript-default-output

# ok: curl-pipe-bash
curl http://10.110.1.200/deployment/scripts/SLAVE00-flight-setup.bash | tee -a /tmp/mainscript-default-output

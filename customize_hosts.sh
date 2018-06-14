#!/bin/bash
# ----------USERDATA: customize hosts---------
# ----------SCRIPT: donn't modify unless what you know what to do----------
tf=`mktemp /tmp/userdata.XXXXXX`

# ----------VARIABLES----------
cat > $tf <<- EOF
# The following lines are added by cloud-init userdata
127.0.0.1 example1.com
127.0.0.2 example2.com

EOF

# ----------SCRIPT: donn't modify unless what you know what to do----------
cat $tf >> /etc/hosts
rm -f $tf
# ----------END: customize hosts---------

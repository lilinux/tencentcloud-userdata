#!/bin/bash
# ----------USERDATA: customize dns---------
# ----------SCRIPT: donn't modify unless what you know what to do----------
tf=`mktemp /tmp/userdata.XXXXXX`

# ----------VARIABLES----------
cat > $tf <<- EOF
# The following lines are added by cloud-init userdata
nameserver 8.8.8.8
nameserver 8.8.4.4

EOF

# ----------SCRIPT: donn't modify unless what you know what to do----------
cat $tf > /etc/resolv.conf
rm -f $tf
# ----------END: customize dns---------

#!/bin/bash
# ----------USERDATA: add extra ssh keys---------
# ----------SCRIPT: donn't modify unless what you know what to do----------
tf=`mktemp /tmp/userdata.XXXXXX`

# ----------VARIABLES----------
USER=root
cat > $tf <<- EOF
# The following lines are added by cloud-init userdata
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDpRnFQY4K5m4r7JKWeaM0cAaLeSjYW+30FlYc0Reszrs+eeDAjJOtfI0ssZ+tkRvxt/yRBTNOGZIwFAP6K4ZLr7OXASbVH5CXdm05b1NPKVVaCGVG+4DCN6DiY8GEJ2MnClUs8QympGP5EZTR5wFBzUPhAYuwoueYsptlUeyq0zYcXR3nteDq0Rmp0mVwMDxrIMqcGC5zMh9coeOgb8UN93FkNBluKwXn4ozcKlHO3gS6j8wQBXkp4M4t0EngDbqv8M5145Ehqdzv81W0SLXI3jp0t9zPyoOXmhBBElNVy6uvnwvzgcTX5YHuHgdZiD/Z6F1sjFwzEzqUyDn3kjZTl powellli@tencent.com
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCo1ySXUkBlYKTv5nMqjwVoyngJRHv1KSD6is4X/6Ma4sl8k6HE5iHflI2iNfkJPkV9OBZmArcBWP9GVi4VVI1CF8rE5mwsNZSCujpPa3J/m5tHamrQD2mdl11j0k7/7yVaHByVf24alvn93MddOnI4fH5sgHSO68kcWQQwAjd5NdX6LlBloCiT8RPxsHJAi7XNs7RtN/NId48Rjni/1reG/5A2BTlIF8omdvf3io0S886dmUKDQPlB0IFsol1sWXHBjcX5o4EobEFuJmm37t/EqqVE5il5kN+CiEYYmQ7ztYc1htcfa1LkJAgWLDh9S29blX+J8SiHTD7j4Fi1azgf powellli@tencent.com

EOF

# ----------SCRIPT: donn't modify unless what you know what to do----------
home=$(eval echo ~$USER)
cat $tf >> "$home/.ssh/authorized_keys"
rm -f $tf
# ----------END: add extra ssh keys---------

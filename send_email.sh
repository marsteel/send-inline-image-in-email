#/bin/bash
# Modified by https://github.com/marsteel
# Get service performance chart
# Tested on Debian

script_path="/root/scripts/"

#Send inline image via email 
${script_path}/img2emailbody.sh | /usr/sbin/sendmail -t
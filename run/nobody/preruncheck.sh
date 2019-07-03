#!/bin/bash

# script to call multiple scripts in series to read in values written by script /root/prerunget.sh

# blocking script, will wait for valid ip address assigned to tun0/tap0
source /home/nobody/getvpnip.sh

# blocking script, will wait for valid vpn incoming port and read value in (script executed only if provider is pia)
# value read in is generated by script /root/getvpnport.sh
source /home/nobody/getvpnport.sh

# blocking script, will wait for vpn external ip address to be retrieved and read value in (via ns or web lookup)
# value read in is generated by script /root/getvpnextip.sh
source /home/nobody/getvpnextip.sh

# blocking script, will wait for iptables chain policy to be drop, identified by checking contents of file
# '/tmp/checkiptables' which is generated by script '/root/iptable.sh' (cannot list iptables by non root)
source /home/nobody/checkiptables.sh

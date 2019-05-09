#!/bin/bash

# Activate Wake On Lan on network card.

#
# chkconfig: 2345 20 20
# description: Wake-on-LAN setup for NIC
#
### BEGIN INIT INFO
# Provides: wol
# Required-Start: $network
# Required-Stop: $network
# Default-Start: 2 3 4 5
# Default-Stop:
# Short-Description: Wake-on-LAN setup for NIC
# Description: Wake-on-LAN setup for NIC
### END INIT INFO

ethtool -s enp0s7 wol g
exit

# To Enable
# sudo mv wakeonlan.sh /etc/init.d/wakeonlan
# sudo chmod 755 /etc/init.d/wakeonlan
# sudo chown root:root /etc/init.d/wakeonlan
# sudo update-rc.d wakeonlan defaults
# sudo update-rc.d wakeonlan enable
# sudo service wakeonlan start

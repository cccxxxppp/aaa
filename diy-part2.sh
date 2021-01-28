#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
sed -i 's/192.168.1.1/192.168.123.254/g' package/base-files/files/bin/config_generate
sed -i '/set network.$1.netmask='$netm'/a\ \t\t\t\tset\ network.$1.dns='"'"'218.85.152.99\ 218.85.157.99'"'"'' package/base-files/files/bin/config_generate
sed -i '/set network.$1.netmask='$netm'/a\ \t\t\t\tset\ network.$1.gateway='"'"'192.168.123.1'"'"'' package/base-files/files/bin/config_generate

# Modify default Theme
sed -i 's/luci-theme-bootstrap/luci-theme-argon-18.06/g' feeds/luci/collections/luci/Makefile

#cd package/lean/
#rm -rf luci-theme-argon  
#git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git  
#git clone https://github.com/jerrykuku/lua-maxminddb.git
#git clone https://github.com/jerrykuku/luci-app-vssr.git
#git clone https://github.com/tty228/luci-app-serverchan.git

#!/bin/bash
#============================================================
# https://github.com/Lancenas/Actions-Lean-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================

# Modify default IP
#sed -i 's/192.168.1.1/192.168.1.11/g' package/base-files/files/bin/config_generate


git clone https://github.com/sbwml/luci-app-filemanager.git package/luci-app-filemanager

#git clone https://github.com/shuangqiao999/luci-app-einat.git package/luci-app-einat

#git clone https://github.com/k13132/openwrt-dpdk.git package/dpdk

curl -sSL https://raw.githubusercontent.com/chenmozhijin/turboacc/luci/add_turboacc.sh -o add_turboacc.sh && bash add_turboacc.sh
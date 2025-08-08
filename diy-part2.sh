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
# SmartDNS
rm -rf feeds/luci/applications/luci-app-smartdns
git clone https://github.com/lwb1978/luci-app-smartdns package/luci-app-smartdns
# 替换immortalwrt 软件仓库smartdns版本为官方最新版
rm -rf feeds/packages/net/smartdns
# cp -rf ${GITHUB_WORKSPACE}/patch/smartdns package/
git clone https://github.com/lwb1978/openwrt-smartdns package/smartdns
# 添加 smartdns-ui
echo "CONFIG_PACKAGE_luci-app-smartdns_INCLUDE_smartdns_ui=y" >> .config
echo "CONFIG_PACKAGE_smartdns-ui=y" >> .config

# openssl Enable QUIC and KTLS support
echo "CONFIG_OPENSSL_WITH_QUIC=y" >> .config
# echo "CONFIG_OPENSSL_WITH_KTLS=y" >> .config
echo "SmartDNS 插件切换完成"

git clone https://github.com/muink/openwrt-einat-ebpf.git package/einat-ebpf

git clone https://github.com/muink/luci-app-einat.git package/luci-app-einat
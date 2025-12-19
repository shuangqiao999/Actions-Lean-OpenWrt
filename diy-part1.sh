#!/bin/bash
#=============================================================
# https://github.com/Lancenas/Actions-Lean-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

# fw876/helloworld
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
# echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
# echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
# echo 'src-git small https://github.com/kenzok8/small' >>feeds.conf.default

# Lienol/openwrt-package
# sed -i '$a src-git lienol https://github.com/Lancenas/lienol-openwrt-package.git' feeds.conf.default
# sed -i '$a src-git xiaorouji https://github.com/xiaorouji/openwrt-passwall-packages.git' feeds.conf.default


# 清除opkg相关缓存
rm -rf /workdir/openwrt/dl/opkg-2025.11.05~80503d94.tar.zst
rm -rf /workdir/openwrt/tmp/dl/opkg-2025.11.05~80503d94

# 重新构建opkg
cd /workdir/openwrt
make package/system/opkg/clean
make package/system/opkg/download
make package/system/opkg/compile
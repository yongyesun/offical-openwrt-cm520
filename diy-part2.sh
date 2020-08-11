#!/bin/bash
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
git clone --depth 1 https://github.com/yongyesun/luci-app-koolproxy package/luci-app-koolproxy
git clone --depth 1 https://github.com/kenzok8/openwrt-packages package/kenzok8
git clone --depth 1 https://github.com/yongyesun/lede package/lede
cp -r package/lede/package/lean package/lean
cp -r package/lede/tools/ucl tools/ucl
cp -r package/lede/tools/upx tools/upx
rm -rf package/lede

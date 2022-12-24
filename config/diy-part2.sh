#!/bin/bash

# Modify default IP
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

# 修改opkg源
echo "src/gz openwrt_kiddin9 https://op.supes.top/packages/aarch64_cortex-a53" >> package/system/opkg/files/customfeeds.conf

# argon主题
find . -maxdepth 4 -iname "*argon*" -type d | xargs rm -rf
git clone https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
git clone https://github.com/jerrykuku/luci-app-argon-config.git package/luci-app-argon-config
sed -i 's/"Argon 主题设置"/"主题设置"/g' `grep "Argon 主题设置" -rl ./`

# Remove packages
rm -rf ./feeds/luci/applications/luci-app-passwall
rm -rf ./feeds/packages/net/mosdns
rm -rf ./feeds/packages/net/v2ray-geodata
rm -rf ./package/feeds/luci/luci-app-passwall
rm -rf ./package/feeds/packages/mosdns
rm -rf ./package/feeds/packages/v2ray-geodata

# Add packages
git clone https://github.com/sbwml/luci-app-alist.git package/luci-app-alist
git clone https://github.com/messense/aliyundrive-fuse.git package/aliyundrive-fuse/openwrt/luci-app-aliyundrive-fuse
git clone https://github.com/vernesong/OpenClash.git package/luci-app-openclash
svn co https://github.com/nantayo/passwall/trunk package/passwall
svn co https://github.com/ophub/luci-app-amlogic/trunk package/amlogic
svn co https://github.com/sbwml/luci-app-mosdns/trunk package/mosdns
svn co https://github.com/sbwml/v2ray-geodata/trunk package/geodata



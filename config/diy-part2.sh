#!/bin/bash

# Modify default IP
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

# Remove packages
rm -rf ./feeds/luci/applications/luci-app-passwall
rm -rf ./feeds/packages/net/mosdns
rm -rf ./feeds/packages/net/v2ray-geodata
rm -rf ./package/feeds/luci/luci-app-passwall
rm -rf ./package/feeds/packages/mosdns
rm -rf ./package/feeds/packages/v2ray-geodata

# Add packages
svn co https://github.com/nantayo/passwall/trunk package/passwall
svn co https://github.com/ophub/luci-app-amlogic/trunk package/amlogic
svn co https://github.com/sbwml/luci-app-mosdns/trunk package/mosdns
svn co https://github.com/sbwml/v2ray-geodata/trunk package/geodata
svn co https://github.com/vernesong/OpenClash/trunk/luci-app-openclash package/luci-app-openclash
svn co https://github.com/kiddin9/openwrt-packages/trunk package/luci-app-alist
svn co https://github.com/kiddin9/openwrt-packages/trunk package/luci-app-aliyundrive-fuse

#!/bin/bash

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git helloworld https://github.com/fw876/helloworld' ./feeds.conf.default

sed -i '$a src-git helloworld https://github.com/fw876/helloworld.git' ./feeds.conf.default
#sed -i '$a src-git nikki https://github.com/nikkinikki-org/OpenWrt-nikki.git;main' ./feeds.conf.default

# homeproxy
#git clone --depth=1 https://github.com/immortalwrt/homeproxy.git package/homeproxy
git clone https://github.com/gdy666/luci-app-lucky.git package/luci-app-lucky
git clone https://github.com/sirpdboy/luci-app-taskplan package/luci-app-taskplan
git clone https://github.com/vernesong/OpenClash.git package/luci-app-openclash
rm -rf feeds/luci/applications/luci-app-openclash
git clone https://github.com/linkease/istore.git package/istore

git clone https://github.com/nikkinikki-org/OpenWrt-nikki.git package/nikk

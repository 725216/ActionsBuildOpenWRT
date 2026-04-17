#!/bin/bash

# 移除 openwrt feeds 自带的核心库
rm -rf feeds/packages/net/{xray-core,v2ray-geodata,sing-box,chinadns-ng,dns2socks,hysteria,ipt2socks,microsocks,naiveproxy,shadowsocks-libev,shadowsocks-rust,shadowsocksr-libev,simple-obfs,tcping,trojan-plus,tuic-client,v2ray-plugin,xray-plugin,geoview,shadow-tls}
git clone https://github.com/Openwrt-Passwall/openwrt-passwall-packages package/passwall-packages

# 移除 openwrt feeds 过时的luci版本
rm -rf feeds/luci/applications/luci-app-passwall
git clone https://github.com/Openwrt-Passwall/openwrt-passwall package/passwall-luci

# 移除过时的openclash
rm -rf feeds/luci/applications/luci-app-openclash
git clone https://github.com/vernesong/OpenClash.git package/OpenClash

git clone  https://github.com/gdy666/luci-app-lucky.git package/lucky                               #  lucky 

git clone https://github.com/sirpdboy/luci-app-taskplan.git package/luci-app-taskplan               #  定时任务设置

git clone --depth 1 https://github.com/jcorporation/myMPD.git /tmp/tmp_mympd
mv /tmp/tmp_mympd/contrib/packaging/openwrt package/mympd/
rm -rf /tmp/tmp_mympd
sed -i '78s/^[[:space:]]*/\t/' package/mympd/Makefile



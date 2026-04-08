#!/bin/bash

# 移除 openwrt feeds 自带的核心库
rm -rf feeds/packages/net/{xray-core,v2ray-geodata,sing-box,chinadns-ng,dns2socks,hysteria,ipt2socks,microsocks,naiveproxy,shadowsocks-libev,shadowsocks-rust,shadowsocksr-libev,simple-obfs,tcping,trojan-plus,tuic-client,v2ray-plugin,xray-plugin,geoview,shadow-tls}
git clone https://github.com/Openwrt-Passwall/openwrt-passwall-packages package/passwall-packages

# 移除 openwrt feeds 过时的luci版本
rm -rf feeds/luci/applications/luci-app-passwall
git clone https://github.com/Openwrt-Passwall/openwrt-passwall package/passwall-luci
rm -rf feeds/luci/applications/luci-app-openclash

git clone https://github.com/sirpdboy/luci-app-taskplan package/luci-app-taskplan               #  定时任务设置

# git clone --depth 1 https://github.com/coolsnowwolf/luci.git /tmp/tmp_luci
# mv /tmp/tmp_luci/applications/luci-app-wireguard package/luci-app-wireguard/
# rm -rf /tmp/tmp_luci

# 添加常用插件源
echo "src-git kenzo https://github.com/kenzok8/openwrt-packages" >> feeds.conf.default
echo "src-git small https://github.com/kenzok8/small" >> feeds.conf.default

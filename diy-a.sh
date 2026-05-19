#!/bin/bash

# 修改默认IP
# sed -i 's/192.168.123.1/10.0.0.1/g' package/base-files/files/bin/config_generate

# 移除要替换的包
rm -rf feeds/packages/net/mosdns
rm -rf feeds/packages/net/msd_lite
rm -rf feeds/packages/net/smartdns
rm -rf feeds/luci/themes/luci-theme-argon
rm -rf feeds/luci/applications/luci-app-mosdns
rm -rf feeds/luci/applications/luci-app-netdata
rm -rf feeds/packages/net/{xray-core,v2ray-geodata,sing-box,chinadns-ng,dns2socks,hysteria,ipt2socks,microsocks,naiveproxy,shadowsocks-libev,shadowsocks-rust,shadowsocksr-libev,simple-obfs,tcping,trojan-plus,tuic-client,v2ray-plugin,xray-plugin,geoview,shadow-tls}
rm -rf feeds/luci/applications/luci-app-passwall
rm -rf feeds/luci/applications/luci-app-ssr-plus
rm -rf feeds/luci/applications/helloworld
rm -rf feeds/luci/applications/luci-app-openclash

# 添加额外插件
git clone  https://github.com/gdy666/luci-app-lucky.git package/lucky                               #  lucky 

git clone https://github.com/sirpdboy/luci-app-taskplan.git package/luci-app-taskplan               #  定时任务设置

git clone https://github.com/linkease/istore.git package/istore

git clone --depth 1 https://github.com/jcorporation/myMPD.git /tmp/tmp_mympd
mv /tmp/tmp_mympd/contrib/packaging/openwrt package/mympd/
rm -rf /tmp/tmp_mympd
sed -i '78s/^[[:space:]]*/\t/' package/mympd/Makefile

./scripts/feeds update -a
./scripts/feeds install -a

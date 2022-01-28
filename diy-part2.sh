# Modify default IP
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

# push packages to package/lean
pushd package/lean

#add openwrt-packages kenzok8源
git clone --depth=1 https://github.com/kenzok8/openwrt-packages

#add smartdns
git clone https://github.com/pymumu/openwrt-smartdns package/smartdns
git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns

#add rebootschedule
git clone https://github.com/DevOpenWRT-Router/luci-app-rebootschedule package/luci-app-rebootschedule

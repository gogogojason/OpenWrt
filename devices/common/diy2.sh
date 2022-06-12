# ------------------------------------------------------
date1=`date +%Y.%m.%d`
sed -i "/DISTRIB_DESCRIPTION/c\DISTRIB_DESCRIPTION=\"hfy166 D$date1'\"" package/base-files/files/etc/openwrt_release
sed -i "s/192.168.1.1/192.168.2.1/g" package/base-files/files/bin/config_generate
sed -i 's/https:\/\/op.supes.top/https:\/\/pan.zstk.tk/g' feeds/kiddin9/luci-app-gpsysupgrade/luasrc/model/cbi/gpsysupgrade/sysupgrade.lua
sed -i 's/https:\/\/op.supes.top/https:\/\/pan.zstk.tk/g' feeds/kiddin9/luci-app-gpsysupgrade/root/etc/hotplug.d/online/50-opkg-restore
sed -i 's/https:\/\/op.supes.top/https:\/\/pan.zstk.tk/g' feeds/kiddin9/luci-app-attendedsysupgrade/root/etc/config/attendedsysupgrade
sed -i 's/系统在线更新/系统升级/g' feeds/kiddin9/luci-app-gpsysupgrade/po/zh_Hans/gpsysupgrade.po
sed -i 's/网页管理端口/账号密码为root|管理端口/g' feeds/kiddin9/luci-app-adguardhome/po/zh_Hans/adguardhome.po
rm -f feeds/kiddin9/luci-theme-edge/htdocs/luci-static/edge/logo.png
rm -rf feeds/kiddin9/luci-app-attendedsysupgrade
rm -rf feeds/kiddin9/ntfs3-oot
git clone https://github.com/gogogojason/logos.git package/logos
cp package/logos/milogo.png feeds/kiddin9/luci-theme-edge/htdocs/luci-static/edge/logo.png

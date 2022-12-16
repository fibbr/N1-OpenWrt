# 为什么本项目存在？
自2022年初，各科学上网插件响应V2ray技术更新，移除了alterID开始，未升级的机场无法继续使用。无奈之下，作者Fork并长期维护了一份[passwall](https://github.com/nantayo/passwall)代码，以继续使用带alterID的老机场。也因此，作者学习编译OpenWrt并建立了本仓库，以定制并定期更新固件。
***
# 用前须知
1.作者身为玩家，挤不出向上游提交PR的精力，如遇BUG请自行移步上游仓库反馈。而设置、使用方面的问题可到[讨论区](https://github.com/nantayo/N1-OpenWrt/discussions)提问，作者看到后会尽量帮忙解答。<br>
2.本项目旨在满足作者对OpenWrt的要求，如需定制自己的固件，请fork后修改config文件。
***
# 项目简介
本项目通常每月1、16日更新，适配设备为斐讯N1，支持完全的IPv6功能。<br>
特别注意：固件按照“有Padavan/OpenWrt主路由，N1做透明网关”的拓扑设计，已添加防火墙规则，且关闭LAN口的DHCP服务。如有需要，第一次设置可使用192.168.2.x静态IP接入N1后台。<br>
本固件追求简单、轻量，只包含默认的Boorstrap皮肤，以及下列额外插件：<br>
[luci-app-amlogic](https://github.com/ophub/luci-app-amlogic)：更新、备份、文件传输、CPU调频等。<br>
luci-app-dockerman：docker管理。<br>
[luci-app-mosdns](https://github.com/sbwml/luci-app-mosdns)：高性能DNS处理器，可国内外分流、去广告、DNS缓存等。<br>
[luci-app-passwall](https://github.com/nantayo/passwall)：科学上网。<br>
luci-app-samba4：存储共享。<br>
其中，mosdns、dnsmasq、passwall的配置已联动调整并编译进固件中，默认开箱可用。
***
# 致谢
本项目基于天灵的[OpenWrt源码](https://github.com/immortalwrt/immortalwrt)，使用flippy的[打包脚本](https://github.com/unifreq/openwrt_packit)，制作filppy[为arm设备适配](https://github.com/breakings/OpenWrt/tree/main/opt/kernel)的OpenWrt固件，衷心感谢开发者们付出的努力。<br>
flippy固件的更多细节参考[恩山论坛帖子](https://www.right.com.cn/forum/thread-4076037-1-1.html)
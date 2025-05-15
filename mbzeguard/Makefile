include $(TOPDIR)/rules.mk

PKG_NAME:=mbzeguard
PKG_VERSION:=0.2.8
PKG_RELEASE:=1

PKG_MAINTAINER:=mizoil <mbzeguard@mizoil>
PKG_LICENSE:=GPL-2.0-or-later

include $(INCLUDE_DIR)/package.mk

define Package/mbzeguard
	SECTION:=net
	CATEGORY:=Network
	DEPENDS:=+dnsmasq-full +curl +jq +kmod-nft-tproxy +coreutils-base64
	TITLE:=Domain routing app
	URL:=https://github.com/mizoil/mbzeguard
	PKGARCH:=all
endef

define Package/mbzeguard/description
	Domain routing. Use of VLESS, Shadowsocks technologies
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/mbzeguard/prerm
#!/bin/sh

grep -q "105 mbzeguard" /etc/iproute2/rt_tables && sed -i "/105 mbzeguard/d" /etc/iproute2/rt_tables

rm -f /etc/hotplug.d/iface/50-mbzeguard

exit 0
endef

define Package/mbzeguard/conffiles
/etc/config/mbzeguard
endef

define Package/mbzeguard/install
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) ./files/etc/init.d/mbzeguard $(1)/etc/init.d/mbzeguard
	sed -i "s/VERSION_FROM_MAKEFILE/$(PKG_VERSION)/g" $(1)/etc/init.d/mbzeguard

	$(INSTALL_DIR) $(1)/etc/config
	$(INSTALL_CONF) ./files/etc/config/mbzeguard $(1)/etc/config/mbzeguard

	$(INSTALL_DIR) $(1)/etc/hotplug.d/iface
	$(INSTALL_DATA) ./files/etc/hotplug.d/iface/50-mbzeguard $(1)/etc/hotplug.d/iface/50-mbzeguard
endef

$(eval $(call BuildPackage,mbzeguard))

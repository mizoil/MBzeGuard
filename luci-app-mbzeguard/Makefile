include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-mbzeguard
PKG_VERSION:=0.2.9
PKG_RELEASE:=1

LUCI_TITLE:=LuCI mbzeguard app
LUCI_DEPENDS:=+luci-base +mbzeguard
LUCI_PKGARCH:=all
LUCI_LANG.ru:=Русский (Russian)
LUCI_LANG.en:=English

PKG_LICENSE:=GPL-2.0-or-later
PKG_MAINTAINER:=mizoil <mbzeguard@mizoil.info>

LUCI_LANGUAGES:=en ru

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature

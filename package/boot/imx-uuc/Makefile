#
# Copyright (C) 2015 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
include $(TOPDIR)/rules.mk

PKG_NAME:=imx-uuc
PKG_VERSION=2015-09-13-$(PKG_SOURCE_VERSION)
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/mhei/fsl-imx-uuc.git
PKG_SOURCE_VERSION:=2b99403b6dc60a22b07eb7a5cc0cb184abb89bdd
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_SOURCE_VERSION)
PKG_SOURCE:=$(PKG_NAME)-$(PKG_SOURCE_VERSION).tar.bz2

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_SOURCE_VERSION)

PKG_LICENSE:=GPL-2.0+
PKG_LICENSE_FILES:=LICENSE

PKG_MAINTAINER:=Michael Heimpold <mhei@heimpold.de>

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk

define Package/sdimage
	SECTION:=utils
	CATEGORY:=Utilities
	TITLE:=Application for writing bootstreams to SD cards/eMMCs
	DEPENDS:=@TARGET_mxs
endef

define Package/sdimage/description
 The sdimage tool writes a bootstream to the special boot partition
 with the proper headers and replicated streams.
endef

define Package/uuc
	SECTION:=utils
	CATEGORY:=Utilities
	TITLE:=Freescale i.MX23/i.MX28 UTP decode program
	DEPENDS:=@TARGET_mxs
endef

define Package/uuc/description
 This tool is the counterpart on the target device to Freescale's MfgTool
 and interprets Freescale's UTP extensions to USB mass storage gadget protocol.
 Note that this tool requires a kernel with these extensions patched in.
endef

define Build/Configure
endef

define Package/sdimage/install
	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/sdimage $(1)/usr/sbin
endef

define Package/uuc/install
	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/uuc $(1)/usr/sbin
endef

$(eval $(call BuildPackage,sdimage))
$(eval $(call BuildPackage,uuc))

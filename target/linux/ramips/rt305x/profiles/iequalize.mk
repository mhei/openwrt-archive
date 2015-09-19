#
# Copyright (C) 2015 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Profile/UNIEQ-Box
	NAME:=IEQualize UNIEQ-Box
	PACKAGES:=kmod-swconfig swconfig uboot-envtools wpad-mini
endef

define Profile/UNIEQ-Box/Description
	Default package set compatible with IEQualize UNIEQ-Box board.
endef
$(eval $(call Profile,UNIEQ-Box))

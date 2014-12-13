#
# Copyright (C) 2014 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Profile/mba28
  NAME:=TQ MBa28 board
  DEPENDS:=+@TARGET_ROOTFS_INCLUDE_KERNEL +@TARGET_ROOTFS_INCLUDE_DTB
  PACKAGES+= \
	-dnsmasq -firewall -ppp -ip6tables -iptables -6relayd -mtd uboot-envtools \
	kmod-leds-gpio kmod-ledtrig-timer kmod-usb-mxs-phy -kmod-ipt-nathelper
endef

define Profile/mba28/Description
	TQ MBa28 evaluation boards
endef

$(eval $(call Profile,mba28))

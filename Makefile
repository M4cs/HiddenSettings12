ARCHS = arm64 arm64e
TARGET = iphone::
SYS_ROOT = $(THEOS)/sdks/iPhoneOS11.2.sdk

INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = HiddenSettings12

HiddenSettings12_FILES = Tweak.xm
HiddenSettings12_CFLAGS = -fobjc-arc
HiddenSettings12_FRAMEWORKS += UIKit QuartzCore
HiddenSettings12_LIBRARIES = activator



include $(THEOS_MAKE_PATH)/tweak.mk

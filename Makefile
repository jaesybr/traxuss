ARCHS = arm64 arm64e
TARGET = iphone:clang:latest:latest

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = ModMenu

ModMenu_FILES = Tweak.mm ModMenu.cpp
ModMenu_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
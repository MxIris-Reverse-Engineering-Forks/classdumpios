GO_EASY_ON_ME=1
target = appletv:12.1
THEOS_DEVICE_IP=192.168.15.12
DEBUG=0
FINALPACKAGE=0
include $(THEOS)/makefiles/common.mk

TOOL_NAME = classdumpios
classdumpios_CFLAGS = -fobjc-arc -include ext.h

classdumpios_FRAMEWORKS = UIKit
classdumpios_FILES = $(wildcard *.*m)
classdumpios_CODESIGN_FLAGS=-Sent.plist
include $(THEOS_MAKE_PATH)/tool.mk

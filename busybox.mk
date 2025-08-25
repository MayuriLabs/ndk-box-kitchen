MINORLEVEL := 1
BB_VER := "$(VERSION).$(PATCHLEVEL).$(SUBLEVEL).$(MINORLEVEL) Mayuri"

include $(CLEAR_VARS)
LOCAL_MODULE := busybox
LOCAL_C_INCLUDES := $(LOCAL_PATH)/include
LOCAL_STATIC_LIBRARIES := libselinux
LOCAL_LDFLAGS := -static -Wl,--wrap=realpath -Wl,--wrap=rename -Wl,--wrap=renameat -Wl,--wrap=getaddrinfo
LOCAL_CFLAGS := \
-w -include include/autoconf.h -D__USE_BSD -D__USE_GNU \
-DBB_VER=\"$(BB_VER)\" -DBB_BT=AUTOCONF_TIMESTAMP

LOCAL_SRC_FILES := \

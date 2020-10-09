#
# Copyright (C) 2012 Canonical, Ltd. All rights reserved.
#

LOCAL_PATH:= $(call my-dir)
ROOT_PATH:=$(call my-dir)/..

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
        logger.c \
        fileutil.c \
        miscutil.c \
        strgutil.c \
        ttyio.c \
        argparse.c \
        memory.c \
        secmem.c \
        errors.c \
        iobuf.c \
        dotlock.c \
        http.c \
        pka.c \
        membuf.c \
        cert.c \
        convert.c \
        estream-printf.c \
        compat.c \
        srv.c \
        assuan-buffer.c \
        assuan-client.c \
        assuan-errors.c \
        assuan-logging.c \
        assuan-socket-connect.c \
        assuan-connect.c \
        assuan-socket.c \
        assuan-util.c

LOCAL_C_INCLUDES := \
        $(ROOT_PATH)/intl \
        $(ROOT_PATH)/include \
        bionic/libc/private \
        bionic/libc/dns/include

LOCAL_CFLAGS := -DHAVE_CONFIG_H \
                -Wno-implicit-function-declaration \
                -Wno-sign-compare \
                -Wno-error

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE:= libgpgutil

include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES:= \
        compat.c \
        srv.c

LOCAL_C_INCLUDES := \
        $(ROOT_PATH)/intl \
        $(ROOT_PATH)/include \
        bionic/libc/private \
        bionic/libc/dns/include

LOCAL_CFLAGS := -DHAVE_CONFIG_H -Wno-sign-compare

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE:= libgpgcompat

include $(BUILD_STATIC_LIBRARY)

# 站点构建配置（被 makefile include，可覆盖其默认值，见 doc/install.html）
BUILDDIR := $(CURDIR)/build
$(shell mkdir -p $(BUILDDIR))
TARGET := x86/linux
HOSTFILE := etc/linux.c
# clang -O2 会把 rcc 编出段错误，gcc 无此问题；编译器项目无需 -O2
CFLAGS := -g -std=gnu89

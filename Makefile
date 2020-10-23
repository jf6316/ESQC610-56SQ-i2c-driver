KERNELDIR= /home/user/ONL/20200824/OpenNetworkLinux/packages/base/amd64/kernels/kernel-4.9-lts-x86-64-all/builds/jessie/linux-4.9.75

PWD:=$(shell pwd)
INSTALLDIR=$(PWD)
CC=gcc

obj-m += x86-64-cameo-esqc610-56sq.o
x86-64-cameo-esqc610-56sq-objs := x86-64-cameo-esqc610-56sq-common.o x86-64-cameo-esqc610-56sq-sys.o \
x86-64-cameo-esqc610-56sq-led.o x86-64-cameo-esqc610-56sq-fan.o x86-64-cameo-esqc610-56sq-power.o \
x86-64-cameo-esqc610-56sq-thermal.o x86-64-cameo-esqc610-56sq-qsfp.o x86-64-cameo-esqc610-56sq-sfp.o

modules:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules
clean:     
	rm -rf *.o *.ko *.mod.c *.markers *.order *.symvers
.PHONY:modules clean
KERNELDIR= /home/user/ONL/kernel/linux-4.9.75

PWD:=$(shell pwd)
INSTALLDIR=$(PWD)
CC=gcc

obj-m := x86-64-cameo-esqc610-56sq.o
modules:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules
clean:     
	rm -rf *.o *.ko *.mod.c *.markers *.order *.symvers
.PHONY:modules clean

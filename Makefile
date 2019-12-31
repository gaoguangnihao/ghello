obj-m := helloworld.o 
PWD       := $(shell pwd)
all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
 
clean:
	rm -rf *.o *~ core .*.cmd *.mod.c ./tmp_version



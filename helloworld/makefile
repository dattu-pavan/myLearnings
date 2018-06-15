
include $(SRCDIR)/env.mk
include $(SRCDIR)/gmakepre.mk

all:	helloworld$E
name = helloworld

helloworld$E: helloworld.o
	$(CC) $(CFLAGS) -o helloworld$E helloworld.o
	$(RMDIR) -f $(SRCDIR)/debug/$(name)
	$(MKDIR) -p $(SRCDIR)/debug/$(name)
	$(MV) helloworld$E $(SRCDIR)/debug/$(name)/

helloworld.o:	helloworld.c
	 $(CC) $(CFLAGS) -I $(SRCDIR)/include/ -c helloworld.c

clean:
	 $(RM) -f helloworld.o $(SRCDIR)/debug/$(name)/helloworld$E

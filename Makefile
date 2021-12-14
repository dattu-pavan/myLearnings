
# Set all the basic commands for the over all operations to run
CC = gcc
RM = rm
LD	= gcc
SHELL = sh
MKDIR = mkdir
MV = mv
RMDIR = rm -r
CFLAGS = -Wall

# Now set the paths for the TOPLEVELDIR which maps to the source codedd
SRCDIR = $(TOPLEVELDIR)
BUILDDIR = $(SRCDIR)/debug

ifdef ($(TOPLEVELDIR),)
	@echo "TOPLEVELDIR directory is not set."

else

.PHONY: all

all:	helloworldE

endif	# End else

helloworldE:	helloworld$E

helloworld$E: helloworld.o
	$(CC) $(CFLAGS) -o helloworld$E helloworld.o

helloworld.o:	$(SRCDIR)/helloworld/helloworld.c
	 $(MKDIR) $(BUILDDIR)/helloworld
	 $(CC) $(CFLAGS) -I $(SRCDIR)/include/ -c $(SRCDIR)/helloworld/helloworld.c

clean:
	 $(RMDIR) -vf $(BUILDDIR)

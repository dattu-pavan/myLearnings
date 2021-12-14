
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
	@echo "TOPLEVELDIR is set to:" "$(SRCDIR)"

.PHONY all

all:	helloworld

endif	# End else

helloworldE:	helloworld$E

helloworld$E: helloworld.o
	$(CC) $(CFLAGS) -o helloworld$E helloworld.o
	$(RMDIR) -f $(BUILDDIR)/helloworld
	$(MKDIR) -p $(BUILDDIR)/helloworld
	
helloworld.o:	helloworld.c
	 $(CC) $(CFLAGS) -I $(SRCDIR)/include/ -c helloworld.c

clean:
	 $(RMDIR) -vf $(BUILDDIR)

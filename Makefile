
# environment
include env.mk

# Extension definitions
include gmakepre.mk

# Path for the final compilation
# SRCDIR = C:/dattu/Programs/GitHubLearnings/myLearnings

INCLUDEDIR := $(SRCDIR)/include

# Include SubDIRS
# echo $(SRCDIR)
include helloworld/makefile

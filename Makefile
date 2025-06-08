M := .git/.makes
$(shell [ -d $M ] || (git clone -q https://github.com/makeplus/makes $M))
include $M/init.mk
include $M/ys.mk

export YSPATH := $(ROOT)/lib


# Print Makefile targets summary
default:: help

test:: $(YS)
	prove -v test/

sysclean::
	$(RM) -r $(LOCAL-ROOT)

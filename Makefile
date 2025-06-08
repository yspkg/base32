#-------------------------------------------------------------------------------
# This is an example Makefile using makes.
#-------------------------------------------------------------------------------

M := .git/.makes
$(shell [ -d $M ] || (git clone -q https://github.com/makeplus/makes $M))
include $M/init.mk
include $M/ys.mk

ROOT := $(MAKE-ROOT)

export YSPATH := $(MAKE-ROOT)


# Print Makefile targets summary
default:: help

test:: $(YS)
	prove -v test/

.PHONY: test

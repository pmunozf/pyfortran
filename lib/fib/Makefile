EXT_SUFFIX := $(python3-config --extension-suffix)

default: fib$(EXT_SUFFIX)

%$(EXT_SUFFIX): %.f90
	f2py -c -m $* $<

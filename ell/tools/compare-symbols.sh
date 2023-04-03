#!/bin/bash

diff -u <(grep -P '^\tl_' ell/ell.sym | tr -d '\t;' | sort) \
	<(ctags -x --c-kinds=fv --extras=-F ell/*[ch] | awk '/LIB_EXPORT/{ print $1 }' | sort)

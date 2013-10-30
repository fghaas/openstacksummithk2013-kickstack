# This assumes that you have the reveal.js repo from GitHub cloned
# into ../reveal.js.
#
# Override with make REVEAL=/path/to/reveal.js
REVEAL ?= ../reveal.js

# Directories we pull from reveal.js
SYMLINKS ?= plugin lib css js

all: symlinks

symlinks: $(SYMLINKS)

$(SYMLINKS):
	ln -s $(REVEAL)/$@

clean:
	rm -f $(SYMLINKS)

.PHONY: all symlinks clean

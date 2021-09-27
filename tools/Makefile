.PHONY: all clean

CC := gcc
CFLAGS := -O3 -std=c17 -Wall -Wextra -pedantic -Wno-missing-field-initializers

tools := \
	lzcomp \
	gfx \
	png_dimensions \
	scan_includes \
	stadium
all: $(tools)
	@:

clean:
	rm -f $(tools)

gfx: common.h
png_dimensions: common.h
scan_includes: common.h
stadium: common.h

lzcomp: CFLAGS += -flto
lzcomp: $(wildcard lz/*.c) $(wildcard lz/*.h)
	$(CC) $(CFLAGS) -o $@ lz/*.c

%: %.c
	$(CC) $(CFLAGS) -o $@ $<

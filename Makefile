
SOURCE=test.s

all: run

clear:
	-rm a.out block

a.out: $(SOURCE)
	as $< -o $@

block: a.out
	objcopy $< -O binary $@ --pad-to 510
	printf '\x55\xaa' >> $@

run: block
	qemu-system-x86_64 $<

.PHONY: run all clear

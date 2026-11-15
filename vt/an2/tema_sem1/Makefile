TYPST ?= typst
MAIN := main.typ
OUTPUT := build/main.pdf

.PHONY: all build watch clean

all: build

build:
	@mkdir -p build
	$(TYPST) compile --root . $(MAIN) $(OUTPUT)

watch:
	@mkdir -p build
	$(TYPST) watch --root . $(MAIN) $(OUTPUT)

clean:
	rm -rf build

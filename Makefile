MD_FILES := $(wildcard *.md)
HTML_FILES := $(patsubst %.md, docs/%.html, $(MD_FILES))
$(info HTML_FILES = $(HTML_FILES))

.PHONY: all clean

all: | docs/ $(HTML_FILES)
	@echo ✅ All files are up to date.

docs/%.html: %.md | docs/
	@echo ⏳ Converting $< → $@
	pandoc -s --embed-resources -o $@ $<

docs/:
	@echo ⏳ Creating docs directory
	mkdir -p docs/

clean:
	rm -rf docs/
	@echo 🗑️ Cleaned output directory.

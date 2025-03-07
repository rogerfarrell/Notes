MD_FILES := $(wildcard *.md)
HTML_FILES := $(patsubst %.md, public/%.html, $(MD_FILES))

.PHONY: all clean

all: $(HTML_FILES)

public/%.html: %.md | public/
	@echo ⏳ Converting $< → $@
	@pandoc -s --embed-resources -o $@ $<

public/:
	@echo ⏳ Creating public directory
	mkdir -p public/

clean:
	rm -rf public/
	@echo 🗑️ Cleaned output directory.

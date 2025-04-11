MD_NOTES         := $(wildcard *.md)
MD_REFERENCES    := $(wildcard references/*.md)
MD_ATTACHMENTS   := $(wildcard attachments/*)

HTML_NOTES       := $(patsubst %.md, docs/%.html, $(MD_NOTES))
HTML_REFERENCES  := $(patsubst references/%.md, docs/references/%.html, $(MD_REFERENCES))
HTML_ATTACHMENTS := $(patsubst attachments/%, docs/attachments/%, $(MD_ATTACHMENTS))

.PHONY: all clean

# This line requires all other matches as dependencies. I am using my variables to
# trigger the corresponding match for every entry in my notes directories.
all: | docs/ docs/references/ docs/attachments/ $(HTML_NOTES) $(HTML_REFERENCES) $(HTML_ATTACHMENTS)
	@echo ✅ All files are up to date.
	@git add .
	@git commit -m "commit on $$(date)"
	@git push

# Pattern rule for notes
docs/%.html: %.md | docs/
	@echo ⏳ Converting $< → $@
	@pandoc --from=markdown+wikilinks_title_after_pipe \
					--standalone \
					--embed-resources \
					--highlight-style=zenburn \
					--include-in-header=template/styles.html \
					--include-after-body=template/header.html \
					--output $@ $<

# Pattern rule for reference files
docs/references/%.html: references/%.md | docs/references/
	@echo ⏳ Converting $< → $@
	@pandoc --from=markdown+wikilinks_title_after_pipe \
					--standalone \
					--embed-resources \
					--highlight-style=zenburn \
					--include-in-header=template/styles.html \
					--include-after-body=template/header.html \
					--output $@ $<

# Pattern rule for attachments
docs/attachments/%: attachments/% | docs/attachments/
	@echo ⏳ Copying attachment $<
	@cp $< $@

# Ensure required directories exist
docs/:
	@echo ⏳ Creating docs directory
	@mkdir -p $@
	@touch $@/CNAME
	@echo "rogerfarrell.net" >> $@/CNAME

docs/references/:
	@echo ⏳ Creating docs/references/ directory
	@mkdir -p $@

docs/attachments/:
	@echo ⏳ Creating docs/attachments/ directory
	@mkdir -p $@

clean:
	@rm -rf docs/
	@echo 🗑️ Cleaned output directory.

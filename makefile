 MD_NOTES         := $(wildcard *.md)
 MD_REFERENCES    := $(wildcard references/*.md)
 MD_ATTACHMENTS   := $(wildcard attachments/*)
 
 HTML_NOTES       := $(patsubst %.md, docs/%.html, $(MD_NOTES))
 HTML_REFERENCES  := $(patsubst references/%.md, docs/references/%.html, $(MD_REFERENCES))
 HTML_ATTACHMENTS := $(patsubst attachments/%, docs/attachments/%, $(MD_ATTACHMENTS))

.PHONY: all clean

all: | docs/ $(HTML_NOTES) $(HTML_REFERENCES) $(HTML_ATTACHMENTS)
	@echo ✅ All files are up to date.

$(HTML_NOTES): $(MD_NOTES) | docs/
	@echo ⏳ Converting $< → $@
	@pandoc  --from=markdown+wikilinks_title_after_pipe -s --embed-resources -o $@ $<

$(HTML_REFERENCES): $(MD_REFERENCES) | docs/references/
	@echo ⏳ Converting $< → $@
	@pandoc  --from=markdown+wikilinks_title_after_pipe -s --embed-resources -o $@ $<

$(HTML_ATTACHMENTS): $(MD_ATTACHMENTS) | docs/attachments/
	@echo ⏳ Copying attachments
	@cp $< $@

docs/:
	@echo ⏳ Creating docs directory
	@mkdir -p docs/

docs/references/:
	@echo ⏳ Creating docs/references/ directory
	@mkdir -p docs/references/

docs/attachments/:
	@echo ⏳ Creating docs/attachments/ directory
	@mkdir -p docs/attachments/

clean:
	@rm -rf docs/
	@echo 🗑️ Cleaned output directory.

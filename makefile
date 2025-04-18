# Top-level notes: *.md → docs/*.html
HTML_NOTES := $(patsubst %.md, docs/%.html, $(wildcard *.md))

# Nested reference notes: references/*.md → docs/references/*.html
HTML_REFERENCES := $(patsubst references/%.md, docs/references/%.html, $(wildcard references/*.md))

# Attachments (images, files, etc.): attachments/* → docs/attachments/*
HTML_ATTACHMENTS := $(patsubst attachments/%, docs/attachments/%, $(wildcard attachments/*))

# --------------------------------------------------------------------------
# 🎯 DEFAULT TARGET
# The 'all' target is the default. It builds all converted HTML files and
# copied attachments, plus ensures the docs/CNAME file is generated.
#
# Each file listed is treated as a target. Make checks if it exists or is out
# of date, and if so, invokes the appropriate pattern rule to generate it.
# --------------------------------------------------------------------------

.PHONY: all clean

all: $(HTML_NOTES) $(HTML_REFERENCES) $(HTML_ATTACHMENTS) docs/CNAME
	@echo ✅ All files are up to date.
	@git add .
	@git commit -m "commit on $$(date)"
	@git push

# --------------------------------------------------------------------------
# 📄 Markdown to HTML Conversion
#
# This generic rule matches any Markdown file and generates its corresponding
# HTML file inside the docs/ directory, preserving subdirectory structure.
#
# `$(dir $@)` extracts the output folder (e.g. docs/, docs/references/) and
# creates it before writing output. This means we don't need separate rules
# to create docs/ and subfolders.
#
# Prerequisites:
# - $<     → the matched Markdown input file (e.g. notes.md)
# - styles → for inline CSS
# - header → for page framing (logo, nav, etc.)
# --------------------------------------------------------------------------

docs/%.html: %.md template/styles.html template/header.html
	@mkdir -p $(dir $@)
	@echo ⏳ Converting $< → $@
	@pandoc --from=markdown+wikilinks_title_after_pipe \
					--standalone \
					--embed-resources \
					--highlight-style=zenburn \
					--shift-heading-level-by=1 \
					--include-in-header=template/styles.html \
					--include-before-body=template/header.html \
					--output $@ $<

# --------------------------------------------------------------------------
# 📎 Attachment Copying
#
# Any file in attachments/* is copied directly to docs/attachments/*,
# preserving name and relative path. We use `mkdir -p` to create the output
# directory only when needed. This ensures all linked files (images, PDFs)
# are available for rendered HTML pages.
# --------------------------------------------------------------------------

docs/attachments/%: attachments/%
	@mkdir -p $(dir $@)
	@echo ⏳ Copying attachment $<
	@cp $< $@

# --------------------------------------------------------------------------
# 🌐 GitHub Pages Domain Mapping
#
# GitHub Pages uses the CNAME file to map the custom domain. This rule
# ensures that the `docs/CNAME` file exists with the correct domain.
#
# It is listed as a dependency of `all`, so it's always generated if missing.
# `| docs/` is an *order-only* prerequisite — it ensures docs/ exists but
# doesn't trigger a rebuild if it changes.
# --------------------------------------------------------------------------

docs/CNAME: | docs/
	@echo "rogerfarrell.net" > $@
	@echo 📝 Wrote $@

# --------------------------------------------------------------------------
# 📁 Directory Bootstrapping
#
# This ensures the base docs/ directory exists when needed (for writing files
# or CNAME). Since all file rules use `mkdir -p $(dir $@)`, this rule is
# only needed to support docs/CNAME directly.
# --------------------------------------------------------------------------

docs/:
	@mkdir -p $@

# --------------------------------------------------------------------------
# 🧹 Cleanup Rule
#
# Removes the entire generated output folder, including all HTML and
# attachments. This is useful when doing a full rebuild or resetting the state.
# --------------------------------------------------------------------------

clean:
	@rm -rf docs/
	@echo 🗑️ Cleaned output directory.

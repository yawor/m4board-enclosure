BOARDS ?= $(patsubst m4board_%.scad,%,$(wildcard m4board_*.scad))
OUTPUT_DIR = stl

PARTS ?= top bottom texts

MKDIR = mkdir -p
SCADC ?= openscad -q

.PHONY: all $(BOARD_REVS)

define BOARD_RULE_TPL
all: $(1)
$(1): $(OUTPUT_DIR)
ifneq (,$(filter $(PARTS),top))
$(1): stl/m4board_$(1)_top.stl
endif
ifneq (,$(filter $(PARTS),bottom))
$(1): stl/m4board_$(1)_bottom.stl
endif
ifneq (,$(filter $(PARTS),texts))
$(1): stl/m4board_$(1)_texts.stl
endif
endef

$(foreach rev,$(BOARDS),$(eval $(call BOARD_RULE_TPL,$(rev))))

stl/m4board_%_top.stl: m4board_%.scad pcb_enclosure/pcb_enclosure.scad
	$(SCADC) -o $@ -DAssembled=false -DExport=\"top\" $<

stl/m4board_%_bottom.stl: m4board_%.scad pcb_enclosure/pcb_enclosure.scad
	$(SCADC) -o $@ -DAssembled=false -DExport=\"bottom\" $<

stl/m4board_%_texts.stl: m4board_%.scad pcb_enclosure/pcb_enclosure.scad
	$(SCADC) -o $@ -DAssembled=false -DExport=\"texts\" $<

$(OUTPUT_DIR):
	$(MKDIR) $@


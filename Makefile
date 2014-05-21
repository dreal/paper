PAPER_DIRS = extract_proofs/ \
	verifying_nonlinear_elementary_functions/

clean_LIBS=$(addprefix clean_,$(PAPER_DIRS))

all: $(PAPER_DIRS)
clean: $(clean_LIBS)

.PHONY: force

$(PAPER_DIRS): force
	make -C $@

$(clean_LIBS): force
	make -C $(patsubst clean_%,%,$@) clean

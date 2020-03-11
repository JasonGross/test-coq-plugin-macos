.DEFAULT_GOAL := all

Makefile.coq: Makefile _CoqProject
	$(COQBIN)coq_makefile -f _CoqProject -o $@

all: Makefile.coq
	$(MAKE) -f Makefile.coq all

$@: Makefile.coq
	$(MAKE) -f Makefile.coq $@

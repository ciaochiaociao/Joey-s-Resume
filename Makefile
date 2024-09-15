# Makefile for resume versions

# Compiler settings
LATEXMK = latexmk

MODE ?= DEV

# Interaction modes:
# - errorstopmode (default): Stops at errors. For active development.
# - scrollmode: Shows errors, doesn't stop. For reviewing changes.
# - nonstopmode: Continues on errors, logs them. For CI/CD.
# - batchmode: Quiet, no stops. For production builds.
ifeq ($(MODE),DEV)
	INTERACTION ?= errorstopmode  # errorstopmode or scrollmode
else
	INTERACTION ?= nonstopmode  # nonstopmode or batchmode
endif

LATEXMK_FLAGS = -synctex=1 -pdf -interaction=$(INTERACTION)


ifeq ($(MODE),PROD)
    LATEXMK_FLAGS += && latexmk -c  # Clean up auxiliary files: *.aux, *.log, *.out
		# Removed files
		# *.aux: auxiliary files (for bibliography)
		# *.log: log file (for debugging)
		# *.out: output file (for debugging)
		# *.fls: file list (for debugging)
		# *.fdb_latexmk: file database (for debugging)
endif

# Base filename
BASE = main

PREFIX = Chiao-Wei_Hsu

# Define resume versions
all: ML Frontend Backend SWE SH full

ML:
	$(LATEXMK) $(LATEXMK_FLAGS) -jobname=$(PREFIX)-ML -usepretex="\def\ML{}" $(BASE).tex

Frontend:
	$(LATEXMK) $(LATEXMK_FLAGS) -jobname=$(PREFIX)-Frontend -usepretex="\def\Frontend{}" $(BASE).tex

Backend:
	$(LATEXMK) $(LATEXMK_FLAGS) -jobname=$(PREFIX)-Backend -usepretex="\def\Backend{}" $(BASE).tex

SWE:
	$(LATEXMK) $(LATEXMK_FLAGS) -jobname=$(PREFIX)-SWE -usepretex="\def\SWE{}" $(BASE).tex

SH:
	$(LATEXMK) $(LATEXMK_FLAGS) -jobname=$(PREFIX)-SH -usepretex="\def\SoftHard{}" $(BASE).tex

full:
	$(LATEXMK) $(LATEXMK_FLAGS) -jobname=$(PREFIX)-Full -usepretex="\def\ML{}\def\Frontend{}\def\Backend{}\def\SoftHard{}" $(BASE).tex

# Clean up auxiliary files
clean:
	$(LATEXMK) -C
	del *.aux *.log *.out *.pdf *.fls *.fdb_latexmk *.synctex.gz

# Phony targets
.PHONY: all ml frontend backend software_hardware full clean
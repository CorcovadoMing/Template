MAIN=main.py

PY=python
SHELL=fish
PROFILE_FOLDER=profile
GENSCRIPT=genprofile

file := ./profile.config
profile_functions := $(shell cat ${file})

.PHONY: profile

all:
	@$(PY) $(MAIN)

profile:
	@$(GENSCRIPT) $(profile_functions)
	@$(SHELL) -c "kernprof -l $(PROFILE_FOLDER)/$(MAIN)" > /dev/null
	@$(SHELL) -c "$(PY) -m line_profiler $(MAIN).lprof"

profiling:
	@profiling $(MAIN)

clean:
	@rm -f $(PROFILE_FOLDER)/*
	@rm -f *.pyc
	@rm -f *.lprof

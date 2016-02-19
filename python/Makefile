MAIN=main.py

PY=python
SHELL=fish
PROFILE_FOLDER=profile
GENPRO=genprofile-py
file := ./profile.config
profile_functions := $(shell cat ${file})

.PHONY: profile

all:
	@$(PY) $(MAIN)

profile:
	@$(SHELL) -c "$(GENPRO) $(profile_functions)"
	@$(SHELL) -c "kernprof -l $(PROFILE_FOLDER)/$(MAIN)" > /dev/null
	@$(SHELL) -c "$(PY) -m line_profiler $(MAIN).lprof"
	@rm -rf $(PROFILE_FOLDER)
	@rm -f $(MAIN).lprof

memprofile:
	@$(SHELL) -c "$(GENPRO) -p $(profile_functions)"
	@$(SHELL) -c "pushd $(PROFILE_FOLDER); $(PY) -m memory_profiler $(MAIN)"
	@rm -rf $(PROFILE_FOLDER)

profiling:
	@profiling $(MAIN)

clean:
	@rm -f $(PROFILE_FOLDER)
	@rm -f *.pyc
	@rm -f *.lprof

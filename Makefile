script = Tools/generateInstances.hs
incomplete_source = Tools/IncompleteHList.hs
instances_number = 15
result_dir = src/Data/Tuple
result = $(result_dir)/HList.hs

.PHONY: all
all: $(result) check

$(result): $(script) $(incomplete_source)
	mkdir -p $(result_dir)
	cat $(incomplete_source) > $(result)
	runhaskell $< $(instances_number) >> $(result)

.PHONY: sdist
sdist: $(result)
	cabal configure
	cabal sdist

.PHONY: check
check: sdist
	cabal build
	cabal haddock
	cabal check

.PHONY: clean
clean:
	cabal clean

script = Tools/generateInstances.hs
incomplete_source = Tools/IncompleteHList.hs
instances_number = 15
result_dir = Data/Tuple
result = $(result_dir)/HList.hs

.PHONY: all
all: $(result)

$(result): $(script) $(incomplete_source)
	mkdir -p $(result_dir)
	cat $(incomplete_source) > $(result)
	runhaskell $< $(instances_number) >> $(result)

.PHONY: clean
clean:
	rm -f $(result)

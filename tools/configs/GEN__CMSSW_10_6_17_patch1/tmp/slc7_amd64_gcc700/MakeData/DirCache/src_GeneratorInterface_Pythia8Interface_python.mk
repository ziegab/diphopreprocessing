ifeq ($(strip $(PyGeneratorInterfacePythia8Interface)),)
PyGeneratorInterfacePythia8Interface := self/src/GeneratorInterface/Pythia8Interface/python
src_GeneratorInterface_Pythia8Interface_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/GeneratorInterface/Pythia8Interface/python)
PyGeneratorInterfacePythia8Interface_files := $(patsubst src/GeneratorInterface/Pythia8Interface/python/%,%,$(wildcard $(foreach dir,src/GeneratorInterface/Pythia8Interface/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyGeneratorInterfacePythia8Interface_LOC_USE := self cmssw 
PyGeneratorInterfacePythia8Interface_PACKAGE := self/src/GeneratorInterface/Pythia8Interface/python
ALL_PRODS += PyGeneratorInterfacePythia8Interface
PyGeneratorInterfacePythia8Interface_INIT_FUNC        += $$(eval $$(call PythonProduct,PyGeneratorInterfacePythia8Interface,src/GeneratorInterface/Pythia8Interface/python,src_GeneratorInterface_Pythia8Interface_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyGeneratorInterfacePythia8Interface,src/GeneratorInterface/Pythia8Interface/python))
endif
ALL_COMMONRULES += src_GeneratorInterface_Pythia8Interface_python
src_GeneratorInterface_Pythia8Interface_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_GeneratorInterface_Pythia8Interface_python,src/GeneratorInterface/Pythia8Interface/python,PYTHON))

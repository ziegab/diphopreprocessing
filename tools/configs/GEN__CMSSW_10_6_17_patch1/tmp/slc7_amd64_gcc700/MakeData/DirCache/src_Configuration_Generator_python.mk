ifeq ($(strip $(PyConfigurationGenerator)),)
PyConfigurationGenerator := self/src/Configuration/Generator/python
src_Configuration_Generator_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/Configuration/Generator/python)
PyConfigurationGenerator_files := $(patsubst src/Configuration/Generator/python/%,%,$(wildcard $(foreach dir,src/Configuration/Generator/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyConfigurationGenerator_LOC_USE := self cmssw 
PyConfigurationGenerator_PACKAGE := self/src/Configuration/Generator/python
ALL_PRODS += PyConfigurationGenerator
PyConfigurationGenerator_INIT_FUNC        += $$(eval $$(call PythonProduct,PyConfigurationGenerator,src/Configuration/Generator/python,src_Configuration_Generator_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyConfigurationGenerator,src/Configuration/Generator/python))
endif
ALL_COMMONRULES += src_Configuration_Generator_python
src_Configuration_Generator_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Configuration_Generator_python,src/Configuration/Generator/python,PYTHON))

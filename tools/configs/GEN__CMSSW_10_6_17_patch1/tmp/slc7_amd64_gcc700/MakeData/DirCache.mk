ALL_SUBSYSTEMS+=Configuration
subdirs_src_Configuration = src_Configuration_Generator
ALL_PACKAGES += Configuration/Generator
subdirs_src_Configuration_Generator := src_Configuration_Generator_test src_Configuration_Generator_python
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
ALL_COMMONRULES += src_Configuration_Generator_test
src_Configuration_Generator_test_parent := Configuration/Generator
src_Configuration_Generator_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Configuration_Generator_test,src/Configuration/Generator/test,TEST))
ALL_SUBSYSTEMS+=GeneratorInterface
subdirs_src_GeneratorInterface = src_GeneratorInterface_Pythia8Interface
ALL_PACKAGES += GeneratorInterface/Pythia8Interface
subdirs_src_GeneratorInterface_Pythia8Interface := src_GeneratorInterface_Pythia8Interface_python src_GeneratorInterface_Pythia8Interface_test src_GeneratorInterface_Pythia8Interface_src src_GeneratorInterface_Pythia8Interface_plugins
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
ifeq ($(strip $(TestGeneratorInterfacePythia8InterfaceCompareExternal)),)
TestGeneratorInterfacePythia8InterfaceCompareExternal := self/src/GeneratorInterface/Pythia8Interface/test
TestGeneratorInterfacePythia8InterfaceCompareExternal_files := 1
TestGeneratorInterfacePythia8InterfaceCompareExternal_TEST_RUNNER_CMD :=  cmsRun ${LOCALTOP}/src/GeneratorInterface/Pythia8Interface/test/compare_external_generators_cfg.py
TestGeneratorInterfacePythia8InterfaceCompareExternal_BuildFile    := $(WORKINGDIR)/cache/bf/src/GeneratorInterface/Pythia8Interface/test/BuildFile
TestGeneratorInterfacePythia8InterfaceCompareExternal_LOC_USE := self cmssw FWCore/Framework FWCore/ParameterSet root SimDataFormats/GeneratorProducts GeneratorInterface/Core CommonTools/UtilAlgos
TestGeneratorInterfacePythia8InterfaceCompareExternal_PACKAGE := self/src/GeneratorInterface/Pythia8Interface/test
ALL_PRODS += TestGeneratorInterfacePythia8InterfaceCompareExternal
TestGeneratorInterfacePythia8InterfaceCompareExternal_INIT_FUNC        += $$(eval $$(call Binary,TestGeneratorInterfacePythia8InterfaceCompareExternal,src/GeneratorInterface/Pythia8Interface/test,src_GeneratorInterface_Pythia8Interface_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
TestGeneratorInterfacePythia8InterfaceCompareExternal_CLASS := TEST
else
$(eval $(call MultipleWarningMsg,TestGeneratorInterfacePythia8InterfaceCompareExternal,src/GeneratorInterface/Pythia8Interface/test))
endif
ifeq ($(strip $(TestGeneratorInterfacePythia8InterfaceCompareIdentical)),)
TestGeneratorInterfacePythia8InterfaceCompareIdentical := self/src/GeneratorInterface/Pythia8Interface/test
TestGeneratorInterfacePythia8InterfaceCompareIdentical_files := 1
TestGeneratorInterfacePythia8InterfaceCompareIdentical_TEST_RUNNER_CMD :=  cmsRun ${LOCALTOP}/src/GeneratorInterface/Pythia8Interface/test/compare_identical_generators_cfg.py
TestGeneratorInterfacePythia8InterfaceCompareIdentical_BuildFile    := $(WORKINGDIR)/cache/bf/src/GeneratorInterface/Pythia8Interface/test/BuildFile
TestGeneratorInterfacePythia8InterfaceCompareIdentical_LOC_USE := self cmssw FWCore/Framework FWCore/ParameterSet root SimDataFormats/GeneratorProducts GeneratorInterface/Core CommonTools/UtilAlgos
TestGeneratorInterfacePythia8InterfaceCompareIdentical_PACKAGE := self/src/GeneratorInterface/Pythia8Interface/test
ALL_PRODS += TestGeneratorInterfacePythia8InterfaceCompareIdentical
TestGeneratorInterfacePythia8InterfaceCompareIdentical_INIT_FUNC        += $$(eval $$(call Binary,TestGeneratorInterfacePythia8InterfaceCompareIdentical,src/GeneratorInterface/Pythia8Interface/test,src_GeneratorInterface_Pythia8Interface_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
TestGeneratorInterfacePythia8InterfaceCompareIdentical_CLASS := TEST
else
$(eval $(call MultipleWarningMsg,TestGeneratorInterfacePythia8InterfaceCompareIdentical,src/GeneratorInterface/Pythia8Interface/test))
endif
ifeq ($(strip $(testGeneratorInterfacePythia8InterfaceTP)),)
testGeneratorInterfacePythia8InterfaceTP := self/src/GeneratorInterface/Pythia8Interface/test
testGeneratorInterfacePythia8InterfaceTP_files := $(patsubst src/GeneratorInterface/Pythia8Interface/test/%,%,$(foreach file,test_catch2_*.cc,$(eval xfile:=$(wildcard src/GeneratorInterface/Pythia8Interface/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/GeneratorInterface/Pythia8Interface/test/$(file). Please fix src/GeneratorInterface/Pythia8Interface/test/BuildFile.))))
testGeneratorInterfacePythia8InterfaceTP_TEST_RUNNER_CMD :=  testGeneratorInterfacePythia8InterfaceTP 
testGeneratorInterfacePythia8InterfaceTP_BuildFile    := $(WORKINGDIR)/cache/bf/src/GeneratorInterface/Pythia8Interface/test/BuildFile
testGeneratorInterfacePythia8InterfaceTP_LOC_USE := self cmssw FWCore/Framework FWCore/ParameterSet root SimDataFormats/GeneratorProducts GeneratorInterface/Core CommonTools/UtilAlgos FWCore/TestProcessor catch2
testGeneratorInterfacePythia8InterfaceTP_PACKAGE := self/src/GeneratorInterface/Pythia8Interface/test
ALL_PRODS += testGeneratorInterfacePythia8InterfaceTP
testGeneratorInterfacePythia8InterfaceTP_INIT_FUNC        += $$(eval $$(call Binary,testGeneratorInterfacePythia8InterfaceTP,src/GeneratorInterface/Pythia8Interface/test,src_GeneratorInterface_Pythia8Interface_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
testGeneratorInterfacePythia8InterfaceTP_CLASS := TEST
else
$(eval $(call MultipleWarningMsg,testGeneratorInterfacePythia8InterfaceTP,src/GeneratorInterface/Pythia8Interface/test))
endif
ifeq ($(strip $(TestGeneratorInterfacePythia8InterfaceCompareExternalStreams)),)
TestGeneratorInterfacePythia8InterfaceCompareExternalStreams := self/src/GeneratorInterface/Pythia8Interface/test
TestGeneratorInterfacePythia8InterfaceCompareExternalStreams_files := 1
TestGeneratorInterfacePythia8InterfaceCompareExternalStreams_TEST_RUNNER_CMD :=  cmsRun ${LOCALTOP}/src/GeneratorInterface/Pythia8Interface/test/compare_external_generators_streams_cfg.py
TestGeneratorInterfacePythia8InterfaceCompareExternalStreams_BuildFile    := $(WORKINGDIR)/cache/bf/src/GeneratorInterface/Pythia8Interface/test/BuildFile
TestGeneratorInterfacePythia8InterfaceCompareExternalStreams_LOC_USE := self cmssw FWCore/Framework FWCore/ParameterSet root SimDataFormats/GeneratorProducts GeneratorInterface/Core CommonTools/UtilAlgos
TestGeneratorInterfacePythia8InterfaceCompareExternalStreams_PACKAGE := self/src/GeneratorInterface/Pythia8Interface/test
ALL_PRODS += TestGeneratorInterfacePythia8InterfaceCompareExternalStreams
TestGeneratorInterfacePythia8InterfaceCompareExternalStreams_INIT_FUNC        += $$(eval $$(call Binary,TestGeneratorInterfacePythia8InterfaceCompareExternalStreams,src/GeneratorInterface/Pythia8Interface/test,src_GeneratorInterface_Pythia8Interface_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_TEST),test,$(SCRAMSTORENAME_LOGS)))
TestGeneratorInterfacePythia8InterfaceCompareExternalStreams_CLASS := TEST
else
$(eval $(call MultipleWarningMsg,TestGeneratorInterfacePythia8InterfaceCompareExternalStreams,src/GeneratorInterface/Pythia8Interface/test))
endif
ifeq ($(strip $(ZJetsTestAnalyzer)),)
ZJetsTestAnalyzer := self/src/GeneratorInterface/Pythia8Interface/test
ZJetsTestAnalyzer_files := $(patsubst src/GeneratorInterface/Pythia8Interface/test/%,%,$(foreach file,ZJetsAnalyzer.cc analyserhepmc/LeptonAnalyserHepMC.cc analyserhepmc/JetInputHepMC.cc,$(eval xfile:=$(wildcard src/GeneratorInterface/Pythia8Interface/test/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/GeneratorInterface/Pythia8Interface/test/$(file). Please fix src/GeneratorInterface/Pythia8Interface/test/BuildFile.))))
ZJetsTestAnalyzer_BuildFile    := $(WORKINGDIR)/cache/bf/src/GeneratorInterface/Pythia8Interface/test/BuildFile
ZJetsTestAnalyzer_LOC_USE := self cmssw FWCore/Framework FWCore/ParameterSet root SimDataFormats/GeneratorProducts GeneratorInterface/Core CommonTools/UtilAlgos
ZJetsTestAnalyzer_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,ZJetsTestAnalyzer,ZJetsTestAnalyzer,$(SCRAMSTORENAME_LIB),src/GeneratorInterface/Pythia8Interface/test))
ZJetsTestAnalyzer_PACKAGE := self/src/GeneratorInterface/Pythia8Interface/test
ALL_PRODS += ZJetsTestAnalyzer
ZJetsTestAnalyzer_INIT_FUNC        += $$(eval $$(call Library,ZJetsTestAnalyzer,src/GeneratorInterface/Pythia8Interface/test,src_GeneratorInterface_Pythia8Interface_test,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
ZJetsTestAnalyzer_CLASS := TEST_LIBRARY
else
$(eval $(call MultipleWarningMsg,ZJetsTestAnalyzer,src/GeneratorInterface/Pythia8Interface/test))
endif
ALL_COMMONRULES += src_GeneratorInterface_Pythia8Interface_test
src_GeneratorInterface_Pythia8Interface_test_parent := GeneratorInterface/Pythia8Interface
src_GeneratorInterface_Pythia8Interface_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_GeneratorInterface_Pythia8Interface_test,src/GeneratorInterface/Pythia8Interface/test,TEST))

ifeq ($(strip $(GeneratorInterfacePythia8Guns)),)
GeneratorInterfacePythia8Guns := self/src/GeneratorInterface/Pythia8Interface/plugins
PLUGINS:=yes
GeneratorInterfacePythia8Guns_files := $(patsubst src/GeneratorInterface/Pythia8Interface/plugins/%,%,$(foreach file,Py*Gun.cc,$(eval xfile:=$(wildcard src/GeneratorInterface/Pythia8Interface/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/GeneratorInterface/Pythia8Interface/plugins/$(file). Please fix src/GeneratorInterface/Pythia8Interface/plugins/BuildFile.))))
GeneratorInterfacePythia8Guns_BuildFile    := $(WORKINGDIR)/cache/bf/src/GeneratorInterface/Pythia8Interface/plugins/BuildFile
GeneratorInterfacePythia8Guns_LOC_USE := self cmssw GeneratorInterface/Pythia8Interface GeneratorInterface/ExternalDecays
GeneratorInterfacePythia8Guns_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,GeneratorInterfacePythia8Guns,GeneratorInterfacePythia8Guns,$(SCRAMSTORENAME_LIB),src/GeneratorInterface/Pythia8Interface/plugins))
GeneratorInterfacePythia8Guns_PACKAGE := self/src/GeneratorInterface/Pythia8Interface/plugins
ALL_PRODS += GeneratorInterfacePythia8Guns
GeneratorInterface/Pythia8Interface_forbigobj+=GeneratorInterfacePythia8Guns
GeneratorInterfacePythia8Guns_INIT_FUNC        += $$(eval $$(call Library,GeneratorInterfacePythia8Guns,src/GeneratorInterface/Pythia8Interface/plugins,src_GeneratorInterface_Pythia8Interface_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
GeneratorInterfacePythia8Guns_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,GeneratorInterfacePythia8Guns,src/GeneratorInterface/Pythia8Interface/plugins))
endif
ifeq ($(strip $(GeneratorInterfacePythia8Filters)),)
GeneratorInterfacePythia8Filters := self/src/GeneratorInterface/Pythia8Interface/plugins
PLUGINS:=yes
GeneratorInterfacePythia8Filters_files := $(patsubst src/GeneratorInterface/Pythia8Interface/plugins/%,%,$(foreach file,Pythia8Hadronizer.cc Py8toJetInput.cc *Hook*.cc LHA*.cc,$(eval xfile:=$(wildcard src/GeneratorInterface/Pythia8Interface/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/GeneratorInterface/Pythia8Interface/plugins/$(file). Please fix src/GeneratorInterface/Pythia8Interface/plugins/BuildFile.))))
GeneratorInterfacePythia8Filters_BuildFile    := $(WORKINGDIR)/cache/bf/src/GeneratorInterface/Pythia8Interface/plugins/BuildFile
GeneratorInterfacePythia8Filters_LOC_USE := self cmssw GeneratorInterface/Pythia8Interface GeneratorInterface/PartonShowerVeto GeneratorInterface/ExternalDecays
GeneratorInterfacePythia8Filters_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,GeneratorInterfacePythia8Filters,GeneratorInterfacePythia8Filters,$(SCRAMSTORENAME_LIB),src/GeneratorInterface/Pythia8Interface/plugins))
GeneratorInterfacePythia8Filters_PACKAGE := self/src/GeneratorInterface/Pythia8Interface/plugins
ALL_PRODS += GeneratorInterfacePythia8Filters
GeneratorInterface/Pythia8Interface_forbigobj+=GeneratorInterfacePythia8Filters
GeneratorInterfacePythia8Filters_INIT_FUNC        += $$(eval $$(call Library,GeneratorInterfacePythia8Filters,src/GeneratorInterface/Pythia8Interface/plugins,src_GeneratorInterface_Pythia8Interface_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
GeneratorInterfacePythia8Filters_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,GeneratorInterfacePythia8Filters,src/GeneratorInterface/Pythia8Interface/plugins))
endif
ALL_COMMONRULES += src_GeneratorInterface_Pythia8Interface_plugins
src_GeneratorInterface_Pythia8Interface_plugins_parent := GeneratorInterface/Pythia8Interface
src_GeneratorInterface_Pythia8Interface_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_GeneratorInterface_Pythia8Interface_plugins,src/GeneratorInterface/Pythia8Interface/plugins,PLUGINS))
ifeq ($(strip $(GeneratorInterface/Pythia8Interface)),)
ALL_COMMONRULES += src_GeneratorInterface_Pythia8Interface_src
src_GeneratorInterface_Pythia8Interface_src_parent := GeneratorInterface/Pythia8Interface
src_GeneratorInterface_Pythia8Interface_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_GeneratorInterface_Pythia8Interface_src,src/GeneratorInterface/Pythia8Interface/src,LIBRARY))
GeneratorInterfacePythia8Interface := self/GeneratorInterface/Pythia8Interface
GeneratorInterface/Pythia8Interface := GeneratorInterfacePythia8Interface
GeneratorInterfacePythia8Interface_files := $(patsubst src/GeneratorInterface/Pythia8Interface/src/%,%,$(wildcard $(foreach dir,src/GeneratorInterface/Pythia8Interface/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
GeneratorInterfacePythia8Interface_BuildFile    := $(WORKINGDIR)/cache/bf/src/GeneratorInterface/Pythia8Interface/BuildFile
GeneratorInterfacePythia8Interface_LOC_USE := self cmssw FWCore/Concurrency FWCore/Framework FWCore/MessageLogger FWCore/Utilities SimDataFormats/GeneratorProducts GeneratorInterface/Core boost pythia8 evtgen vincia dire hepmc clhep
GeneratorInterfacePythia8Interface_EX_LIB   := GeneratorInterfacePythia8Interface
GeneratorInterfacePythia8Interface_EX_USE   := $(foreach d,$(GeneratorInterfacePythia8Interface_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeneratorInterfacePythia8Interface_PACKAGE := self/src/GeneratorInterface/Pythia8Interface/src
ALL_PRODS += GeneratorInterfacePythia8Interface
GeneratorInterfacePythia8Interface_CLASS := LIBRARY
GeneratorInterface/Pythia8Interface_forbigobj+=GeneratorInterfacePythia8Interface
GeneratorInterfacePythia8Interface_INIT_FUNC        += $$(eval $$(call Library,GeneratorInterfacePythia8Interface,src/GeneratorInterface/Pythia8Interface/src,src_GeneratorInterface_Pythia8Interface_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif

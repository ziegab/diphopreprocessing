ALL_COMMONRULES += src_Configuration_Generator_test
src_Configuration_Generator_test_parent := Configuration/Generator
src_Configuration_Generator_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Configuration_Generator_test,src/Configuration/Generator/test,TEST))

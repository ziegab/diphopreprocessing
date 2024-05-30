#!/bin/bash
cmsDriver.py step1 --no_exec --mc --python_filename run_crab.py --fileout HLT.root --eventcontent RAWSIM --datatier GEN-SIM-RAW --geometry DB:Extended --customise_commands 'process.source.bypassVersionCheck = cms.untracked.bool(True)' -n 6284 --conditions 102X_upgrade2018_realistic_v15 --step HLT:2018v32 --era Run2_2018

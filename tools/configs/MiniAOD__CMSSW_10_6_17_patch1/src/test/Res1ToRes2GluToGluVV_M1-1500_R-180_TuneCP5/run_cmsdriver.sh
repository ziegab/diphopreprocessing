#!/bin/bash
cmsDriver.py step1 --no_exec --mc --python_filename run_crab.py --fileout MiniAOD.root --eventcontent MINIAODSIM --runUnscheduled --datatier MINIAODSIM --geometry DB:Extended --step PAT -n 6284 --conditions 106X_upgrade2018_realistic_v16_L1v1 --procModifiers run2_miniAOD_UL --era Run2_2018

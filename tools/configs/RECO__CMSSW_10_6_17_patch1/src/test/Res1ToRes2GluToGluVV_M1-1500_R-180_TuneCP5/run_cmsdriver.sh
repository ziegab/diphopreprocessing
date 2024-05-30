#!/bin/bash
cmsDriver.py step1 --no_exec --mc --python_filename run_crab.py --fileout RECO.root --eventcontent AODSIM --runUnscheduled --datatier AODSIM --geometry DB:Extended -n 6284 --conditions 106X_upgrade2018_realistic_v11_L1v1 --step RAW2DIGI,L1Reco,RECO,RECOSIM,EI --era Run2_2018

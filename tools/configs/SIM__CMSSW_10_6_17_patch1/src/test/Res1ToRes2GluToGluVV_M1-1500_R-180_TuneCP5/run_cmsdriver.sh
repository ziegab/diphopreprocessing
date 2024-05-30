#!/bin/bash
cmsDriver.py step1 --no_exec --mc --python_filename run_crab.py --fileout SIM.root --eventcontent RAWSIM --datatier GEN-SIM --runUnscheduled --step SIM --geometry DB:Extended -n 6284 --nThreads 4 --conditions 106X_upgrade2018_realistic_v11_L1v1 --beamspot Realistic25ns13TeVEarly2018Collision --era Run2_2018

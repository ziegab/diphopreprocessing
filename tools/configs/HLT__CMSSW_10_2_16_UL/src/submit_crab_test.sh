#!/bin/bash
source /cvmfs/cms.cern.ch/cmsset_default.sh
cmsenv
cd /afs/crc.nd.edu/user/a/atownse2/Public/KKTriPhoton/SignalGEN/EXO-MCsampleProductions/FullSimulation/RunIISummer20UL18/HLT__CMSSW_10_2_16_UL/src/test/Res1ToRes2GluToGluVV_M1-1500_R-180_TuneCP5//
crab submit -c submit_crab.py
cd /afs/crc.nd.edu/user/a/atownse2/Public/KKTriPhoton/SignalGEN/EXO-MCsampleProductions/FullSimulation/RunIISummer20UL18/HLT__CMSSW_10_2_16_UL/src/

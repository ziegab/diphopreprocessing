#!/bin/bash
source /cvmfs/cms.cern.ch/cmsset_default.sh
cmsenv
cd /afs/crc.nd.edu/user/a/atownse2/Public/KKTriPhoton/SignalGEN/EXO-MCsampleProductions/FullSimulation/RunIISummer20UL18/DIGIPremix__CMSSW_10_6_17_patch1/src/test/Res1ToRes2GluToGluVV_M1-1500_R-180_TuneCP5//
crab submit -c submit_crab.py
cd /afs/crc.nd.edu/user/a/atownse2/Public/KKTriPhoton/SignalGEN/EXO-MCsampleProductions/FullSimulation/RunIISummer20UL18/DIGIPremix__CMSSW_10_6_17_patch1/src/

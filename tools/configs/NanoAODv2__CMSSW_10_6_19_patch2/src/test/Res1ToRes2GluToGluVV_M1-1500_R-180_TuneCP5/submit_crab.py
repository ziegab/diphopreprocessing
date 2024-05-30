from CRABClient.UserUtilities import config, getUsernameFromCRIC

config = config()

config.General.requestName = "Res1ToRes2GluToGluVV_M1-1500_R-180_TuneCP5"
config.General.workArea = "crab_projects"
config.General.transferLogs = True
config.General.transferOutputs = True

config.JobType.pluginName = "Analysis"
config.JobType.psetName = "run_crab.py"
#config.JobType.maxMemoryMB = 4000
#config.JobType.numCores = 8

config.Data.inputDataset = "There/Is/No/DAS/Output/Dataset/USER" 
config.Data.outLFNDirBase = "/store/user/%s/" % (getUsernameFromCRIC())
config.Data.outputDatasetTag = "RunIISummer20UL18_NanoAODv2"
config.Data.inputDBS = "phys03"
config.Data.splitting = "FileBased"
config.Data.unitsPerJob = 1
config.Data.publication = True
config.Data.ignoreLocality = True

config.Site.storageSite = "T2_US_ND"
config.Site.whitelist = ["T2_*","T3_*"]

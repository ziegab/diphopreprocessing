# Auto generated configuration file
# using: 
# Revision: 1.19 
# Source: /local/reps/CMSSW/CMSSW/Configuration/Applications/python/ConfigBuilder.py,v 
# with command line options: Configuration/Generator/python/AtoGammaGammaFlatMoE_pythia8_cfi.py -s GEN --conditions auto:mc --datatier GEN-SIM-RAW --eventcontent RAWSIM -n 10 --no_exec --python_filename AtoGammaGammaFlatMoE_pythia8_GEN.py
import FWCore.ParameterSet.Config as cms
import sys

from FWCore.ParameterSet.VarParsing import VarParsing

options = VarParsing('analysis')

# outputFile = options.outputFile
# maxEvents = options.maxEvents
maxEvents = int(sys.argv[2])
outputFile = sys.argv[3] if sys.argv[3] != '' else 'GEN.root'
# outputFile = "AtoGammaGammaFlatMoE_25events_GEN.root"
# maxEvents = 25

# aMass = 999
aMass = float(sys.argv[4])

eMin = 250
eMax = 2500
moeMin = 0.01
moeMax = 0.1

process = cms.Process('GEN')

# import of standard configurations
process.load('Configuration.StandardSequences.Services_cff')
process.load('SimGeneral.HepPDTESSource.pythiapdt_cfi')
process.load('FWCore.MessageService.MessageLogger_cfi')
process.load('Configuration.EventContent.EventContent_cff')
process.load('SimGeneral.MixingModule.mixNoPU_cfi')
process.load('Configuration.StandardSequences.GeometryRecoDB_cff')
process.load('Configuration.StandardSequences.MagneticField_cff')
process.load('Configuration.StandardSequences.Generator_cff')
process.load('IOMC.EventVertexGenerators.VtxSmearedRealistic50ns13TeVCollision_cfi')
process.load('GeneratorInterface.Core.genFilterSummary_cff')
process.load('Configuration.StandardSequences.EndOfProcess_cff')
process.load('Configuration.StandardSequences.FrontierConditions_GlobalTag_cff')

process.maxEvents = cms.untracked.PSet(
    input = cms.untracked.int32(maxEvents),
    # output = cms.optional.untracked.allowed(cms.int32,cms.PSet)
)

# Input source
process.source = cms.Source("EmptySource")

process.options = cms.untracked.PSet(
    FailPath = cms.untracked.vstring(),
    IgnoreCompletely = cms.untracked.vstring(),
    Rethrow = cms.untracked.vstring(),
    SkipEvent = cms.untracked.vstring(),
    # accelerators = cms.untracked.vstring('*'),
    # allowUnscheduled = cms.obsolete.untracked.bool,
    canDeleteEarly = cms.untracked.vstring(),
    # deleteNonConsumedUnscheduledModules = cms.untracked.bool(True),
    # dumpOptions = cms.untracked.bool(False),
    # emptyRunLumiMode = cms.obsolete.untracked.string,
    # eventSetup = cms.untracked.PSet(
    #     forceNumberOfConcurrentIOVs = cms.untracked.PSet(
    #         # allowAnyLabel_=cms.required.untracked.uint32
    #     ),
    #     numberOfConcurrentIOVs = cms.untracked.uint32(0)
    # ),
    fileMode = cms.untracked.string('FULLMERGE'),
    forceEventSetupCacheClearOnNewRun = cms.untracked.bool(False),
    # holdsReferencesToDeleteEarly = cms.untracked.VPSet(),
    # makeTriggerResults = cms.obsolete.untracked.bool,
    # modulesToIgnoreForDeleteEarly = cms.untracked.vstring(),
    numberOfConcurrentLuminosityBlocks = cms.untracked.uint32(0),
    numberOfConcurrentRuns = cms.untracked.uint32(1),
    numberOfStreams = cms.untracked.uint32(0),
    numberOfThreads = cms.untracked.uint32(1),
    printDependencies = cms.untracked.bool(False),
    # sizeOfStackForThreadsInKB = cms.optional.untracked.uint32,
    throwIfIllegalParameter = cms.untracked.bool(True),
    wantSummary = cms.untracked.bool(False)
)

# Production Info
process.configurationMetadata = cms.untracked.PSet(
    annotation = cms.untracked.string('Configuration/Generator/python/AtoGammaGammaFlatMoE_pythia8_cfi.py nevts:25'),
    name = cms.untracked.string('Applications'),
    version = cms.untracked.string('$Revision: 1.19 $')
)

# Output definition

process.RAWSIMoutput = cms.OutputModule("PoolOutputModule",
    SelectEvents = cms.untracked.PSet(
        SelectEvents = cms.vstring('generation_step')
    ),
    compressionAlgorithm = cms.untracked.string('LZMA'),
    compressionLevel = cms.untracked.int32(1),
    dataset = cms.untracked.PSet(
        dataTier = cms.untracked.string('GEN-SIM-RAW'),
        filterName = cms.untracked.string('')
    ),
    eventAutoFlushCompressedSize = cms.untracked.int32(20971520),
    fileName = cms.untracked.string(outputFile),
    outputCommands = process.RAWSIMEventContent.outputCommands,
    splitLevel = cms.untracked.int32(0)
)

# Additional output definition

# Other statements
process.genstepfilter.triggerConditions=cms.vstring("generation_step")
from Configuration.AlCa.GlobalTag import GlobalTag
process.GlobalTag = GlobalTag(process.GlobalTag, 'auto:mc', '')

process.generator = cms.EDFilter("Pythia8MoEGun",
    PGunParameters = cms.PSet(
        AddAntiParticle = cms.bool(False),
        
        ParticleID = cms.vint32(25),

        MinE = cms.double(eMin),
        MaxE = cms.double(eMax),

        MinMoE = cms.double(moeMin),
        MaxMoE = cms.double(moeMax),

        MinEta = cms.double(-1.4),
        MaxEta = cms.double(1.4),

        MinPhi = cms.double(-3.14159265359),
        MaxPhi = cms.double(3.14159265359)
    ),
    PythiaParameters = cms.PSet(
        parameterSets = cms.vstring('pythia8_mycmd'),
        pythia8_mycmd = cms.vstring('Higgs:useBSM = off', 
            'HiggsBSM:allH2 = offHiggsBSM:gg2H2 = off', 
            'HiggsBSM:ffbar2H2 =off', 
            'HiggsBSM:gmgm2H2=off', 
            'HiggsBSM:ffbar2H2Z=off', 
            'HiggsBSM:ffbar2H2W=off', 
            'HiggsBSM:ff2H2ff(t:ZZ)=off', 
            'HiggsBSM:ff2H2ff(t:WW)=off', 
            'HiggsBSM:gg2H2ttbar=off', 
            'HiggsBSM:qqbar2H2ttbar=off', 
            '25:m0        = {}'.format(aMass), 
            '25:mMin      = {}'.format(aMass-0.1), 
            '25:mMax      = {}'.format(aMass+0.1),
            '25:mWidth    = 0.01', 
            '25:tau0      = 025:0:bRatio  = 0.0', 
            '25:1:bRatio  = 0.0', 
            '25:2:bRatio  = 0.000', 
            '25:3:bRatio  = 0.00', 
            '25:4:bRatio  = 0.0', 
            '25:5:bRatio  = 0.0', 
            '25:6:bRatio  = 0.0', 
            '25:7:bRatio  = 0.000', 
            '25:8:bRatio  = 0.0', 
            '25:9:bRatio  = 0.0', 
            '25:10:bRatio = 1.00', 
            '25:11:bRatio = 0.00', 
            '25:12:bRatio = 0.0', 
            '25:13:bRatio = 0.0', 
            '25:0:meMode  = 100', 
            '25:1:meMode  = 100', 
            '25:2:meMode  = 100', 
            '25:3:meMode  = 100', 
            '25:4:meMode  = 100', 
            '25:5:meMode  = 100', 
            '25:6:meMode  = 100', 
            '25:7:meMode  = 100', 
            '25:8:meMode  = 100', 
            '25:9:meMode  = 100', 
            '25:10:meMode = 100', 
            '25:11:meMode = 100', 
            '25:12:meMode = 100', 
            '25:13:meMode = 100', 
            '35:m0        = 100', 
            '35:mWidth    = 0.00403', 
            '35:0:bRatio  = 0.0', 
            '35:1:bRatio  = 0.0', 
            '35:2:bRatio  = 0.0', 
            '35:3:bRatio  = 0.0', 
            '35:4:bRatio  = 0.0', 
            '35:5:bRatio  = 0.0', 
            '35:6:bRatio  = 0.0', 
            '35:7:bRatio  = 0.0', 
            '35:8:bRatio  = 0.0', 
            '35:9:bRatio  = 0.0', 
            '35:10:bRatio  = 0.0', 
            '35:11:bRatio  = 0.0', 
            '35:12:bRatio  = 0.0', 
            '35:13:bRatio  = 0.0', 
            '35:14:bRatio  = 0.0', 
            '35:15:bRatio  = 1.0', 
            '35:16:bRatio  = 0.0', 
            '35:17:bRatio  = 0.0', 
            '35:18:bRatio  = 0.0', 
            '35:19:bRatio  = 0.0', 
            '35:20:bRatio  = 0.0', 
            '35:0:meMode  = 100', 
            '35:1:meMode  = 100', 
            '35:2:meMode  = 100', 
            '35:3:meMode  = 100', 
            '35:4:meMode  = 100', 
            '35:5:meMode  = 100', 
            '35:6:meMode  = 100', 
            '35:7:meMode  = 100', 
            '35:8:meMode  = 100', 
            '35:9:meMode  = 100', 
            '35:10:meMode = 100', 
            '35:11:meMode  = 100', 
            '35:12:meMode  = 100', 
            '35:13:meMode  = 100', 
            '35:14:meMode  = 100', 
            '35:15:meMode  = 100', 
            '35:16:meMode  = 100', 
            '35:17:meMode  = 100', 
            '35:18:meMode  = 100', 
            '35:19:meMode  = 100', 
            '35:20:meMode = 100')
    ),
    Verbosity = cms.untracked.int32(0),
    firstRun = cms.untracked.uint32(1),
    psethack = cms.string('a to gamma gamma basic')
)


# Path and EndPath definitions
process.generation_step = cms.Path(process.pgen)
process.genfiltersummary_step = cms.EndPath(process.genFilterSummary)
process.endjob_step = cms.EndPath(process.endOfProcess)
process.RAWSIMoutput_step = cms.EndPath(process.RAWSIMoutput)

# Schedule definition
process.schedule = cms.Schedule(process.generation_step,process.genfiltersummary_step,process.endjob_step,process.RAWSIMoutput_step)
from PhysicsTools.PatAlgos.tools.helpers import associatePatAlgosToolsTask
associatePatAlgosToolsTask(process)
# filter all path with the production filter sequence
for path in process.paths:
	getattr(process,path).insert(0, process.generator)



# Customisation from command line

# Add early deletion of temporary data products to reduce peak memory need
from Configuration.StandardSequences.earlyDeleteSettings_cff import customiseEarlyDelete
process = customiseEarlyDelete(process)
# End adding early deletion

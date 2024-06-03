import os
import sys
import subprocess

import textwrap

import json

preprocessing_dir = os.path.dirname(os.path.abspath(__file__))
top_dir = os.path.dirname(preprocessing_dir)

# Initialize directories
cache_dir = f"{top_dir}/cache"
condor_cache = f"{cache_dir}/condor"
tools_dir = f"{top_dir}/diphopreprocessing/tools"
config_dir = f"{tools_dir}/configs"
for d in [tools_dir, config_dir, condor_cache]:
    if not os.path.exists(d):
        os.makedirs(d)

def try_command(cmd, fail_message=None, exit=True):
    try:
        output = subprocess.check_call(cmd, shell=True)
        return f"Exit code: {output}"
    except:
        if fail_message:
            print(fail_message)
        else:
            print(f"Failed to run command: {cmd}")

        if exit:
            sys.exit(1)
        else:
            return False

def ensure_cmssw(release):
    if not os.path.exists(f"{config_dir}/{release}"):
        print(f"Setting up {release}")
        try_command(f"""
            cd {config_dir}
            scram p CMSSW {release}
            cd {release}/src
            eval `scram runtime -sh`
            scram b"""
        )

def ensure_Config(release):
    if not os.path.exists(f"{config_dir}/{release}/src/Configuration"):
        print(f"Setting up Configuration")
        try_command(f"""
            cd {config_dir}/{release}/src
            eval `scram runtime -sh`
            git cms-addpkg Configuration
            scram b
        """)

def ensure_GeneratorInterface(release):
    if not os.path.exists(f"{config_dir}/{release}/src/GeneratorInterface"):
        print(f"Setting up Generator Interface")
        try_command(f"""
            cd {config_dir}/{release}/src
            eval `scram runtime -sh`
            git cms-addpkg GeneratorInterface/Pythia8Interface
            scram b
        """)

def ensure_genstep(release):
    if not os.path.exists(f"{config_dir}/{release}/src/AtoGammaGammaFlatMoE_pythia8_GEN.py"):
        print(f"Moving files to the correct directory.")
        try_command(f"""
            cd {config_dir}
            cp ./GENfiles/AtoGammaGammaFlatMoE_pythia8_GEN.py ./{release}/src
        """)
    if not os.path.exists(f"{config_dir}/{release}/src/GeneratorInterface/Pythia8Interface/plugins/Py8MoEGun.cc"):
        print(f"Moving plugins to the correct directory.")
        try_command(f"""
            cd {config_dir}
            cp ./GENfiles/plugins/Py8MoEGun.cc ./{release}/src/GeneratorInterface/Pythia8Interface/plugins
        """)

if __name__ == "__main__":
    # Setting up CMSSW environment for the GEN step
    ensure_cmssw("CMSSW_10_6_17_patch1")
    ensure_Config("CMSSW_10_6_17_patch1")
    ensure_GeneratorInterface("CMSSW_10_6_17_patch1")
    
    # Getting necessary plugins and scripts to generate the signal
    ensure_genstep("CMSSW_10_6_17_patch1")
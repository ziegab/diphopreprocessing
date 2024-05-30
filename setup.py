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

To set up the repository:

```
# Create a parent directory
mkdir diphogensig
cd diphogensig

# Clone this repository into your space
git clone https://github.com/ziegab/diphopreprocessing
# You will need to log into your existing github account to access this
# (if your password doesn't work, try getting a personal access token to use from your github settings as your password)

# Set up the space so that everything works (VERY IMPORTANT STEP)
python3 diphopreprocessing/setup.py
```

Main file to be worked with is Generate_diphoSignal.py (located in ```diphopreprocessing/condor```). This by default generates AOD and MiniAOD files for the DiPhoton Gun.
See ```readme.md``` in the condor directory for a list of arguments that can modify the output file you get.

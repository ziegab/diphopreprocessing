To generate files according to the defaults listed in the code, cd to the diphopreprocessing/condor directory and enter:

```python3 Generate_diphoSignal.py```

Arguments can be listed with:
```python3 Generate_diphoSignal.py -n 500```

Arguments:
- ```-n``` to specify number of events. Must be followed by an integer argument. (Default=500)
- ```-o``` to specify the output base directory. Must be followed by a string argument. (Default=/project01/ndcms)
- ```-c``` to submit to condor. (Default=False)
- ```-Ma``` to specify the aMass (GeV). Must be followed by an integer argument. (Default=999)

NOTE: You can also modify the directories in the Generate_diphoSignal.py script directly, if you want to change the names of the directories or if you want to direct to a different temporary directory (default is to /scratch365/ because /tmp/ sometimes has problems working with condor).

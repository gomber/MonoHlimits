#!bin/bash
#example commands to run impact plots, any signal directory is ok. 

combineTool.py -M Impacts -d Zprime1200A400/cmb/400/workspace.root -m 400 --doInitialFit --rMin -2 --rMax 2 --robustFit 1 -t -1 --expectSignal=0  --parallel 8
combineTool.py -M Impacts -d Zprime1200A400/cmb/400/workspace.root -m 400 --robustFit 1 --rMin -2 --rMax 2  --doFits -t -1 --expectSignal=0 --parallel 8
combineTool.py -M Impacts -d Zprime1200A400/cmb/400/workspace.root -m 400 -o impacts.json
plotImpacts.py -i impacts.json -o impacts

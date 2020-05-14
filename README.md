---
output: html_document
---
## Neurocomputational mechanisms underlying motivated seeing 
The online supplement for our paper <i> Neurocomputational mechanisms underlying motivated seeing </i> is hosted on GitHub at [https://github.com/ycleong/MotivatedPerception](https://github.com/ycleong/MotivatedPerception). In service of other researchers who would like to reproduce our work or are interested in applying the same models in their own work, we have made our data and code available. If you have any questions, or find any bugs (or broken links), please email me at ycleong@berkeley.edu. A copy of a preprint is available here: https://www.biorxiv.org/content/early/2018/07/11/364836

### Data
Data from the fMRI sample and in-lab replication that can be downloaded as csv files here:  
  - [fMRI Sample](data/AllData.csv)  
  - [In-lab Replication](data/AllData_inlab.csv)  

[Neurovault Collection](https://neurovault.org/collections/EAAXGDRJ/)
  
### Analaysis Code
* [Motivation biases visual categorization](scripts/Fig2.Rmd) and [Inlab-Replication](scripts/FigS2.Rmd)   
* Drift Diffusion Model: [HDDM fitting](scripts/HDDM.ipynb), [Individual Fits](scripts/FigS7.Rmd), [Conditional Response Functions](scripts/FigS6.Rmd) and [Results Summary](scripts/Fig3.Rmd)  
* [NAcc activity is associated with response bias](scripts/Fig6.Rmd)   
* Category-selective activity is associated with perceptual bias: [Classifier](scripts/Classification.ipynb) & [Results Summary](scripts/Fig7.Rmd)  
* [Reaction Time Analyses](scripts/Fig4_S4.Rmd)  
* Model Recovery Study: [Fitting Code](scripts/ModelRecovery.ipynb), [Results Summary](scripts/FigS5.Rmd)

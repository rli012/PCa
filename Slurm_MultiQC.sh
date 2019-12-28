#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks=8
#SBATCH --mem=16G
#SBATCH --time=10:00:00
#SBATCH --output=MultiQC.stdout
#SBATCH -p batch

source /rhome/rli012/bigdata/G/env/bin/activate
export PYTHONPATH=/rhome/rli012/bigdata/G/env/lib/python2.7/site-packages

multiqc FastQC/

echo "done"


### Installation

#virtualenv env
#source env/bin/activate
#export PYTHONPATH=`pwd`/env/lib/python2.7/site-packages
# #pip install --upgrade pip
#pip install multiqc

#scp -r FastQC/ rli012@cluster.hpcc.ucr.edu:~/bigdata/G/

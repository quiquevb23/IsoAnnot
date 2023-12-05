#!/bin/bash
#SBATCH --nodes=1
#SBATCH --cpus-per-task=8
#SBATCH --job-name=hsapiens_ensembl #Job name
#SBATCH --mail-user=enrique.vidal@csic.es
#SBATCH --mail-type=ALL # Mail events (NONE, BEGIN, END, FAIL, ALL)
#SBATCH --qos=long
#SBATCH --mem=15gb # Per processor memory
#SBATCH -t 5-00:00:00     # Walltime
#SBATCH --output=hsapiens_ensembl.log # Standard output and error log
module load anaconda
source activate snakemake

./isoannot.sh --database ensembl --species hsapiens

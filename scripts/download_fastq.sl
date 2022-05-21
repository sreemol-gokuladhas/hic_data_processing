#!/bin/bash -e
#SBATCH --job-name=fastq-dump
#SBATCH --time=55:00:00
#SBATCH --mem=50000
#SBATCH --cpus-per-task=24
#SBATCH --partition=bigmem
#SBATCH --account=uoa02869


module load snakemake/7.6.2-gimkl-2020a-Python-3.9.9

cd /scale_wlg_persistent/filesets/project/uoa02869/colon_cancer_hic/scripts

snakemake --cores 32


#!/bin/bash

module load parallel-fastq-dump/0.6.6-gimkl-2020a-Python-3.8.2

input="/scale_wlg_persistent/filesets/project/uoa02869/colon_cancer_hic/raw_data/srr_ids.txt"
tmp_dir="/scale_wlg_persistent/filesets/project/uoa02869/colon_cancer_hic/raw_data/fastq"
out_dir="/scale_wlg_persistent/filesets/project/uoa02869/colon_cancer_hic/raw_data/fastq"

cat $input | while read line || [[ -n $line ]];
do
    echo $line "downloading..."
    parallel-fastq-dump --sra-id $line --threads 48 --tmpdir $tmp_dir --outdir $out_dir --split-files --gzip
    echo $line "done."
done


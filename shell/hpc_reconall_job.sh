#!/usr/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --partition=elec.default.q
#SBATCH --error=slurm-%j.err
#SBATCH --output=slurm-%j.out
#SBATCH --time=24:00:00

export FREESURFER_HOME=/home/tue/jheunis/freesurfer
export SUBJECTS_DIR=$FREESURFER_HOME/subjects
source $FREESURFER_HOME/SetUpFreeSurfer.sh

cd /home/tue/jheunis/NEUFEPME_data_BIDS

filename=participants_wo_heading.tsv
declare -a participantsArray
participantsArray=(`cat "$filename"`)

instruction="-s ${participantsArray[$SLURM_ARRAY_TASK_ID]} -i /home/tue/jheunis/NEUFEPME_data_BIDS/${participantsArray[$SLURM_ARRAY_TASK_ID]}/anat/${participantsArray[$SLURM_ARRAY_TASK_ID]}_T1w.nii -all"
recon-all $instruction
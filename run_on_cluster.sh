#!/bin/bash
#
# CREATED USING THE BIOHPC PORTAL on Wed Jul 28 2021 19:13:06 GMT-0500 (Central Daylight Time)
#
# This file is batch script used to run commands on the BioHPC cluster.
# The script is submitted to the cluster using the SLURM `sbatch` command.
# Lines starting with # are comments, and will not be run.
# Lines starting with #SBATCH specify options for the scheduler.
# Lines that do not start with # or #SBATCH are commands that will run.

# Name for the job that will be visible in the job queue and accounting tools.
#SBATCH --job-name runctonaineraigj

# Name of the SLURM partition that this job should run on.
#SBATCH -p 32GB       # partition (queue)
# Number of nodes required to run this job
#SBATCH -N 2

# Memory (RAM) requirement/limit in MB.
#SBATCH --mem 28672      # Memory Requirement (MB)

# Time limit for the job in the format Days-H:M:S
# A job that reaches its time limit will be cancelled.
# Specify an accurate time limit for efficient scheduling so your job runs promptly.
#SBATCH -t 0-4:0:00

# The standard output and errors from commands will be written to these files.
# %j in the filename will be replace with the job number when it is submitted.
#SBATCH -o job_%j.out
#SBATCH -e job_%j.err

# Send an email when the job status changes, to the specfied address.
#SBATCH --mail-type ALL
#SBATCH --mail-user stephan.daetwyler@utsouthwestern.edu

#load Singularity
module load singularity/3.5.3

# COMMAND GROUP 1 - go to the folder where the container is saved
cd /archive/bioinformatics/Danuser_lab/Fiolka/LabMembers/Stephan/container_example

#define here parameters for your tool 
imag_directory="/archive/bioinformatics/Danuser_lab/Fiolka/LabMembers/Stephan/container_example/data3"
imag_savesegmented="/archive/bioinformatics/Danuser_lab/Fiolka/LabMembers/Stephan/container_example/save_segmentation3"
mode="nuclei"
flow_threshold=0
cellprob_threshold=-1
celldiameter=19
channel=1

# COMMAND GROUP 2 - run the container with your settings
singularity run cellpose_container.sif --filedir $imag_directory --savedir $imag_savesegmented --pretrained_model $mode --flow_threshold $flow_threshold --cellprob_threshold $cellprob_threshold --diameter $celldiameter --chan $channel --save_tif




# END OF SCRIPT

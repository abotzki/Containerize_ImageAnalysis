# Containerize_ImageAnalysis
In this repository, we provide the code used to containerize an image analysis workflow.

The following files are contained:
1. The python_main.py file: This file handles the input and calls the right software / functions from within the container (main workflow).
3. The Vagrantfile: This file specifies parameters for the setting up the Virtual Box to build a Singularity Container on a Windows workstation.
4. The cellpose_container.recipe file: This file contains the instructions for building the Singularity Container
5. The run_on_cluster.sh file: This file is the SLURM file to start a job on the Cluster with your container.
6. The Data Folder: This folder contains images to test your container segementation on.

A documentation of the provided files and their usage is found here: https://www.frontiersin.org/articles/10.3389/fbinf.2021.757291/full

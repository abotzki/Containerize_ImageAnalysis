# Containerize_ImageAnalysis
In this repository, we provide the code used to containerize an image analysis workflow.

The following files are contained:
1. The python_master.py file: This file handles the input and calls the right software / functions from within the container
2. The Vagrantfile: This file specifies parameters for the setting up the Virtual Box to build a Singularity Container on a Linux workstation.
3. The container.recipe file: This file contains the build instructions for the Singularity Container
4. The Data Folder: This folder contains images to test your container segementation on.

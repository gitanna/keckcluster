# Complete setup for setting up conda environment and running Python with Tensorflow on the cluster

## Creating an environment from an environment.yml file
Use the terminal or an Anaconda Prompt for the following steps:
Create the environment from the environment.yml file:

conda env create -f tf2-env.yml

Takes about 30 sec to complete
Collecting package metadata (repodata.json): done
Solving environment: done
Preparing transaction: done
Verifying transaction: done
Executing transaction: - 
done

 To activate this environment, use

     $ conda activate tf26-py38

 To deactivate an active environment, use

     $ conda deactivate


## Check dependencies and choose the name for your virtual environment
Make sure path to the virtual environment is specified correctly
Creating an environment from an environment.yml file
The first line of the yml file sets the new environment's name. 

Activate the new environment: conda activate tf26-py38 

Verify that the new environment was installed correctly:

conda env list
You can also use conda info --envs$

## Running code on the cluster: 

To run python code on the cluster
 - insert into .py file (tftest.py) 1st line:
 #!/usr/bin/env python

 - create .sbatch file

Run:
sbatch ./tf2-test.sbatch


To run interactive session on the cluster
 - run content of tf2-test-inter.sbatch on the command line

 If redirecting output to a file:
python tfexample.py  2>&1 | tee log2.txt

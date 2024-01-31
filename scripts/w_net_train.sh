#!/bin/sh
#SBATCH --nodes=2            	# Number of nodes
#SBATCH --ntasks-per-node=1  	# Number of tasks/node
#SBATCH --partition=gpu      	# The partion name: gpu or cpu
#SBATCH --job-name=wnet_segmentation 	# job name
#SBATCH --exclusive         	# Reserve this node only for you
#SBATCH --account=otto.tavares	# account name
module load python
module purge
module load cudnn/7.6.5 cuda/10.1
python3 W-Net/Wnet/train.py 
#!/bin/sh
#SBATCH --nodes=1            	# Number of nodes
#SBATCH --ntasks-per-node=1  	# Number of tasks/node
#SBATCH --partition=gpu      	# The partion name: gpu or cpu
#SBATCH --job-name=segmentation 	# job name
#SBATCH --exclusive         	# Reserve this node only for you
#SBATCH --account=otto.tavares	# account name

python3 pytorch-unsupervised-segmentation-tip/demo.py --visualize 0 --datapath /home/brics/public/brics_data/Manaus/c_manaus/raw/images/  --database_masks c_manaus --seed_target 512

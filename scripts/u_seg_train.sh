#!/bin/sh
#SBATCH --nodes=1            	# Number of nodes
#SBATCH --ntasks-per-node=1  	# Number of tasks/node
#SBATCH --partition=gpu      	# The partion name: gpu or cpu
#SBATCH --job-name=segmentation 	# job name
#SBATCH --exclusive         	# Reserve this node only for you
#SBATCH --account=otto.tavares	# account name
#SBATCH --reservation otto.tavares_7

python3 pytorch-unsupervised-segmentation-tip/demo.py --visualize 0 --datapath /home/brics/public/brics_data/SantaCasa/imageamento_anonimizado_valid/raw/  --database_masks SantaCasa_anonimizado_valid_completo --seed_target 512

#!/bin/sh
#SBATCH --nodes=1            	# Number of nodes
#SBATCH --ntasks-per-node=1  	# Number of tasks/node
#SBATCH --partition=gpu      	# The partion name: gpu or cpu
#SBATCH --job-name=wnet_segmentation 	# job name
#SBATCH --exclusive         	# Reserve this node only for you
#SBATCH --account=otto.tavares	# account name
module load python
module purge
module load cudnn/7.6.5 cuda/10.1
#python3 pytorch-unsupervised-segmentation-tip/demo_ref.py --input results_masks/
python3 pytorch-unsupervised-segmentation-tip/demo_ref.py --input results_masks/check_internal_val/ --isVal --data_mode train --model_saved_path results_masks/b1_itr1_layer3.pth
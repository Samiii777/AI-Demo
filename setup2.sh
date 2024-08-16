#!/bin/bash
source ~/miniconda3/etc/profile.d/conda.sh
cd ~/src/AI-Demo
conda activate base

sh "~/src/AMD_MachineLearning/linux/install.sh"

# Clone the repository
git clone https://github.com/farshadghodsian/llava-amd-radeon-demo

# Change directory to the cloned repository
cd llava-amd-radeon-demo

# Create a conda environment named llava by cloning base
conda create --name llava --clone base -y

# Activate the llava environment
conda activate llava

# Upgrade pip (optional, but recommended)
pip install --upgrade pip

# Install required packages
pip install accelerate fastchat gradio transformers==4.37.2

echo "Setup complete. The llava environment is now active and ready to use."

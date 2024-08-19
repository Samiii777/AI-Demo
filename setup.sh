#!/bin/bash
sudo apt install openssh-server -y
sudo apt install tmux -y

# Clone the repository
git clone https://github.com/farshadghodsian/llava-amd-radeon-demo

# Change directory to the cloned repository
cd llava-amd-radeon-demo

# Install required packages
pip install accelerate fastchat gradio transformers==4.37.2

echo "Setup complete. You can now start via sh ./start.sh"

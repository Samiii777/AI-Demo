pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/rocm6.1 --force-reinstall

pip install --pre torchtune --extra-index-url https://download.pytorch.org/whl/nightly/cpu --no-cache-dir

tune download meta-llama/Meta-Llama-3.1-8B-Instruct --output-dir /tmp/Meta-Llama-3.1-8B-Instruct --ignore-patterns "original/consolidated.00.pth" --hf-token XXX

tune run lora_finetune_single_device --config llama3_1/8B_lora_single_device

git clone https://github.com/huggingface/diffusers.git
cd diffusers
pip install .
cd examples/text_to_image
pip3 install -r requirements.txt
pip3 install pillow==10.4.0
accelerate config default
mkdir -p data/
cp -r ../../../data/cat/ ./data/cat



from diffusers import DiffusionPipeline
import torch

model_path="lora_weights/sd2.1"
pipeline = DiffusionPipeline.from_pretrained("stabilityai/stable-diffusion-2-1")
pipeline.unet.load_attn_procs(model_path)
pipeline.to("cuda")
image = pipeline("A cat in a bucket").images[0]
image.save("SD2.1-cat.png")
image.show()

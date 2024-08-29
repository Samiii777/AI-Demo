from diffusers import DiffusionPipeline
import torch

pipeline = DiffusionPipeline.from_pretrained("stabilityai/stable-diffusion-2-1")
pipeline.to("cuda")
image = pipeline("A cat in a bucket").images[0]
image.save("SD2.1-cat.png")
image.show()

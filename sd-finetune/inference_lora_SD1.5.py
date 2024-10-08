from diffusers import DiffusionPipeline
import torch

model_path="lora_weights/sd1.5"
pipeline = DiffusionPipeline.from_pretrained("runwayml/stable-diffusion-v1-5", torch_dtype=torch.float16)
pipeline.unet.load_attn_procs(model_path)
pipeline.to("cuda")
image = pipeline("A cat in a bucket").images[0]
image.save("SD1.5-cat.png")
image.show()

export DATA_DIR="./data/cat"
export MODEL_NAME="runwayml/stable-diffusion-v1-5"
export OUTPUT_DIR="./models/lora/cat"

cd diffusers/examples/text_to_image
accelerate launch  train_text_to_image_lora.py \
  --mixed_precision=no \
  --pretrained_model_name_or_path=$MODEL_NAME \
  --train_data_dir=$DATA_DIR \
  --dataloader_num_workers=8 \
  --resolution=512 --center_crop --random_flip \
  --train_batch_size=1 \
  --gradient_accumulation_steps=4 \
  --max_train_steps=1500 \
  --learning_rate=1e-04 \
  --max_grad_norm=1 \
  --lr_scheduler="cosine" --lr_warmup_steps=0 \
  --output_dir=${OUTPUT_DIR} \
  --checkpointing_steps=500 \
  --validation_prompt="A photo of a cat in a bucket" \
  --validation_epochs=10 \
  --seed=42

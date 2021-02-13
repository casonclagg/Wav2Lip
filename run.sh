#!/bin/bash

# ./run "input.mp4" "input.wav" 20 output.mp4

python inference.py --checkpoint_path /content/pretrained-models/wav2lip_gan.pth --face "$INPUT_FACE" --audio "$INPUT_AUDIO" --pads 0 $PADDING 0 0

ffmpeg -y -i $INPUT_AUDIO -i temp/result.avi -strict -2 -q:v 1 $OUTPUT_FILE
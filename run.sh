#!/bin/bash

# ./run "input.mp4" "input.wav" 20 output.mp4

python inference.py --checkpoint_path models/wav2lip_gan.pth --face $1 --audio $2 --pads 0 $3 0 0

ffmpeg -y -i $2 -i temp/result.avi -strict -2 -q:v 1 $4
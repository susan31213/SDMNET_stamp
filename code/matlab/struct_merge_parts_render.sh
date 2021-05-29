#!/bin/bash
matlab -nojvm -batch "GetOptimizedObj2('/mnt/data2/dataset/SDM_images/models_arm_nonarn_half', 'chair', 2, 1, 0)"
cd ~/GAN/latent_exploration/code/ShapeNetRender
blender --background --python render_sdm.py -- --class chair --output_folder /mnt/data1/dataset/our_dataset/SDM_interpolation_set/chair/images_struct/ --viewstep 5 /mnt/data1/dataset/our_dataset/SDM_interpolation_set/chair/models/merge_struct/

#!/bin/bash
matlab -nojvm -batch "GetOptimizedObj2('/mnt/data2/dataset/SDM_images/images_struct_128_nonarmchair/w2l/epoch1/obj', 'chair', 2, 1, 0, 1, 7)"
cd ~/GAN/latent_exploration/code/ShapeNetRender
blender --background --python render_sdm.py -- --class chair --output_folder /mnt/data1/dataset/our_dataset/SDM_interpolation_set/chair/images/ --viewstep 5 /mnt/data1/dataset/our_dataset/SDM_interpolation_set/chair/models/merge/

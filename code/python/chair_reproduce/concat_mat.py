import scipy.io as sio
import numpy as np
pair_mat = sio.loadmat('/mnt/data2/dataset/SDM_images/models_arm_nonarn_half/inter_sym_single.mat')
sf_all = pair_mat['symmetry_feature']
emb_all = pair_mat['emb']

single_mat = sio.loadmat('/mnt/data2/dataset/SDM_images/models_arm_nonarn_half/inter_sym_single.mat')
sf = pair_mat['symmetry_feature']
emb = pair_mat['emb']

sf_all = np.concatenate([sf_all, sf], axis=0)
emb_all = np.concatenate([emb_all, emb], axis=0)

print(sf_all.shape)
print(emb_all.shape)
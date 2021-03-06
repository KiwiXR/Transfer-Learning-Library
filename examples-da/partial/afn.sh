#!/usr/bin/env bash
# Office31
CUDA_VISIBLE_DEVICES=0 python afn.py data/office31 -d Office31 -s A -t W -a resnet50 --epochs 20 --seed 1 --log logs/afn/Office31_A2W
CUDA_VISIBLE_DEVICES=0 python afn.py data/office31 -d Office31 -s D -t W -a resnet50 --epochs 20 --seed 1 --log logs/afn/Office31_D2W
CUDA_VISIBLE_DEVICES=0 python afn.py data/office31 -d Office31 -s W -t D -a resnet50 --epochs 20 --seed 1 --log logs/afn/Office31_W2D
CUDA_VISIBLE_DEVICES=0 python afn.py data/office31 -d Office31 -s A -t D -a resnet50 --epochs 20 --seed 1 --log logs/afn/Office31_A2D
CUDA_VISIBLE_DEVICES=0 python afn.py data/office31 -d Office31 -s D -t A -a resnet50 --epochs 20 --seed 1 --log logs/afn/Office31_D2A
CUDA_VISIBLE_DEVICES=0 python afn.py data/office31 -d Office31 -s W -t A -a resnet50 --epochs 20 --seed 1 --log logs/afn/Office31_W2A

# Office-Home
CUDA_VISIBLE_DEVICES=0 python afn.py data/office-home -d OfficeHome -s Ar -t Cl -a resnet50 --epochs 30 --seed 0 --log logs/afn/OfficeHome_Ar2Cl
CUDA_VISIBLE_DEVICES=0 python afn.py data/office-home -d OfficeHome -s Ar -t Pr -a resnet50 --epochs 30 --seed 0 --log logs/afn/OfficeHome_Ar2Pr
CUDA_VISIBLE_DEVICES=0 python afn.py data/office-home -d OfficeHome -s Ar -t Rw -a resnet50 --epochs 30 --seed 0 --log logs/afn/OfficeHome_Ar2Rw
CUDA_VISIBLE_DEVICES=0 python afn.py data/office-home -d OfficeHome -s Cl -t Ar -a resnet50 --epochs 30 --seed 0 --log logs/afn/OfficeHome_Cl2Ar
CUDA_VISIBLE_DEVICES=0 python afn.py data/office-home -d OfficeHome -s Cl -t Pr -a resnet50 --epochs 30 --seed 0 --log logs/afn/OfficeHome_Cl2Pr
CUDA_VISIBLE_DEVICES=0 python afn.py data/office-home -d OfficeHome -s Cl -t Rw -a resnet50 --epochs 30 --seed 0 --log logs/afn/OfficeHome_Cl2Rw
CUDA_VISIBLE_DEVICES=0 python afn.py data/office-home -d OfficeHome -s Pr -t Ar -a resnet50 --epochs 30 --seed 0 --log logs/afn/OfficeHome_Pr2Ar
CUDA_VISIBLE_DEVICES=0 python afn.py data/office-home -d OfficeHome -s Pr -t Cl -a resnet50 --epochs 30 --seed 0 --log logs/afn/OfficeHome_Pr2Cl
CUDA_VISIBLE_DEVICES=0 python afn.py data/office-home -d OfficeHome -s Pr -t Rw -a resnet50 --epochs 30 --seed 0 --log logs/afn/OfficeHome_Pr2Rw
CUDA_VISIBLE_DEVICES=0 python afn.py data/office-home -d OfficeHome -s Rw -t Ar -a resnet50 --epochs 30 --seed 0 --log logs/afn/OfficeHome_Rw2Ar
CUDA_VISIBLE_DEVICES=0 python afn.py data/office-home -d OfficeHome -s Rw -t Cl -a resnet50 --epochs 30 --seed 0 --log logs/afn/OfficeHome_Rw2Cl
CUDA_VISIBLE_DEVICES=0 python afn.py data/office-home -d OfficeHome -s Rw -t Pr -a resnet50 --epochs 30 --seed 0 --log logs/afn/OfficeHome_Rw2Pr

# VisDA-2017
CUDA_VISIBLE_DEVICES=0 python afn.py data/visda-2017 -d VisDA2017 -s Synthetic -t Real -a resnet50 --num-blocks 2 --trade-off-norm 0.01 -r 0.3 \
    --epochs 100 -i 1000 --seed 0 --per-class-eval --center-crop --log logs/afn/VisDA2017

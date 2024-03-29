#!/bin/bash

mamba activate misalign

# MR T2 -> T1
python misalign/train.py model='proposed_A_to_B.yaml' data.misalign_x=0 data.misalign_y=5 data.degree=2.5 data.motion_prob=0 data.deform_prob=0 model.params.lambda_l1=100 model.params.lambda_style=5 model.params.lambda_smooth=100 model.params.lambda_reg_consistency=120 data.reverse=Ture tags='Proposed_100_5_100_120_lv5_T1'

# Ablation Study
python misalign/train.py model='proposed_A_to_B.yaml' data.misalign_x=0 data.misalign_y=5 data.degree=2.5 data.motion_prob=0.5 data.deform_prob=0 model.params.lambda_l1=20 model.params.lambda_style=20 model.params.lambda_smooth=10 model.params.lambda_reg_consistency=10 model.params.flag_register=False model.params.flag_ctx=False model.params.flag_meta_learning=False data.reverse=Ture tags='Ablation_Base_lv5_50A_T1'
python misalign/train.py model='proposed_A_to_B.yaml' data.misalign_x=0 data.misalign_y=5 data.degree=2.5 data.motion_prob=0.5 data.deform_prob=0 model.params.lambda_l1=20 model.params.lambda_style=20 model.params.lambda_smooth=10 model.params.lambda_reg_consistency=10 model.params.flag_register=False model.params.flag_ctx=False data.reverse=Ture tags='Ablation_Base_RW_lv5_50A_T1'
python misalign/train.py model='proposed_A_to_B.yaml' data.misalign_x=0 data.misalign_y=5 data.degree=2.5 data.motion_prob=0.5 data.deform_prob=0 model.params.lambda_l1=20 model.params.lambda_style=20 model.params.lambda_smooth=10 model.params.lambda_reg_consistency=10 model.params.flag_register=False data.reverse=Ture tags='Ablation_Base_RW_CX_lv5_50A_T1'
python misalign/train.py model='proposed_A_to_B.yaml' data.misalign_x=0 data.misalign_y=5 data.degree=2.5 data.motion_prob=0.5 data.deform_prob=0 model.params.lambda_l1=20 model.params.lambda_style=20 model.params.lambda_smooth=10 model.params.lambda_reg_consistency=10 data.reverse=Ture tags='Ablation_Base_RW_CX_RC_lv5_50A_T1'

# MR 3T1 -> 7T1
python misalign/train.py model='proposed_A_to_B.yaml' data.misalign_x=0 data.misalign_y=0 data.degree=0 data.motion_prob=0 data.deform_prob=0 model.params.lambda_l1=100 model.params.lambda_style=5 model.params.lambda_smooth=100 data.reverse=False tags='RW_CX_100_5_100_lv0_3T1_7T1_s'
python misalign/train.py model='proposed_A_to_B.yaml' data.misalign_x=0 data.misalign_y=5 data.degree=2.5 data.motion_prob=0 data.deform_prob=0 model.params.lambda_l1=100 model.params.lambda_style=5 model.params.lambda_smooth=100 data.reverse=False tags='RW_CX_100_5_100_lv5_3T1_7T1_s'

# MR 3T1 -> 7T2
python misalign/train.py model='proposed_A_to_B.yaml' data.misalign_x=0 data.misalign_y=0 data.degree=0 data.motion_prob=0 data.deform_prob=0 model.params.lambda_l1=100 model.params.lambda_style=5 model.params.lambda_smooth=100 data.reverse=False tags='RW_CX_100_5_100_lv0_3T1_7T2_s'
python misalign/train.py model='proposed_A_to_B.yaml' data.misalign_x=0 data.misalign_y=5 data.degree=2.5 data.motion_prob=0 data.deform_prob=0 model.params.lambda_l1=100 model.params.lambda_style=5 model.params.lambda_smooth=100 data.reverse=False tags='RW_CX_100_5_100_lv5_3T1_7T2_s'

# MR 3T2 -> 7T1
python misalign/train.py model='proposed_A_to_B.yaml' data.misalign_x=0 data.misalign_y=0 data.degree=0 data.motion_prob=0 data.deform_prob=0 model.params.lambda_l1=100 model.params.lambda_style=5 model.params.lambda_smooth=100 data.reverse=False tags='RW_CX_100_5_100_lv0_3T2_7T1_s'
python misalign/train.py model='proposed_A_to_B.yaml' data.misalign_x=0 data.misalign_y=5 data.degree=2.5 data.motion_prob=0 data.deform_prob=0 model.params.lambda_l1=100 model.params.lambda_style=5 model.params.lambda_smooth=100 data.reverse=False tags='RW_CX_100_5_100_lv5_3T2_7T1_s'

# MR 3T2 -> 7T2
python misalign/train.py model='proposed_A_to_B.yaml' data.misalign_x=0 data.misalign_y=0 data.degree=0 data.motion_prob=0 data.deform_prob=0 model.params.lambda_l1=100 model.params.lambda_style=5 model.params.lambda_smooth=100 data.reverse=False tags='RW_CX_100_5_100_lv0_3T2_7T2_s'
python misalign/train.py model='proposed_A_to_B.yaml' data.misalign_x=0 data.misalign_y=5 data.degree=2.5 data.motion_prob=0 data.deform_prob=0 model.params.lambda_l1=100 model.params.lambda_style=5 model.params.lambda_smooth=100 data.reverse=False tags='RW_CX_100_5_100_lv5_3T2_7T2_s'

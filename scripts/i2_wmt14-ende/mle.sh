python run.py --dataset wmt14-ende --vocab_size 60000 --gpu 0 --ffw_block highway --params big --lr_schedule anneal --fast --train_repeat_dec 2 --valid_repeat_dec 2 --use_argmax --next_dec_input both --denoising_prob 0.5 --layerwise_denoising_weight --use_distillation --max_len 100


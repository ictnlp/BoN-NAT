python run.py  --dataset wmt14-deen --vocab_size 60000 --gpu 2 --ffw_block highway --params big --lr_schedule anneal --fast --valid_repeat_dec 1 --use_argmax --next_dec_input both --use_distillation --load_from <model-name>  --resume --finetune_trg_len --trg_len_option predict



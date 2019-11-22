python run.py  --dataset iwslt-ende --vocab_size 40000 --gpu 0 --ffw_block highway --params small --lr_schedule anneal --fast --valid_repeat_dec 1 --use_argmax --next_dec_input both  --use_distillation --load_from <model-name>  --resume --finetune_trg_len --trg_len_option predict



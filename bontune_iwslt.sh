python run.py --n 2 --ng_finetune --load_from <model-name> --dataset iwslt-ende --vocab_size 60000 --gpu 0 --ffw_block highway --params small --lr_schedule anneal --fast --train_repeat_dec 1 --valid_repeat_dec 1 --use_argmax  --use_distillation



python run.py --load_vocab --dataset wmt16-roen --vocab_size 60000 --gpu 0 --ffw_block highway --params big --lr_schedule anneal --fast --valid_repeat_dec 2 --use_argmax --next_dec_input both --mode test --remove_repeats --trg_len_option predict --use_predicted_trg_len --load_from <model-name>


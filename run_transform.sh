#!/bin/bash

python transformer_cloud/train.py --src_vocab_fpath nist06n/cn_30001.dict --trg_vocab_fpath nist06n/en_30001.dict --train_file_pattern 'nist06n/data/part-00' --batch_size 256 --use_token_batch True  --special_token '_GO' '_EOS' '_UNK'

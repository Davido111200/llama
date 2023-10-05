#!/bin/bash

ckpt_dir="../../llama-2-7b-chat"
tokenizer_dir="../../tokenizer.model"

torchrun --nproc_per_node 1 \
        example_chat_completion.py \
        --ckpt_dir $ckpt_dir \
        --tokenizer_path $tokenizer_dir \
        --max_seq_length 512 \
        --max_batch_size 6
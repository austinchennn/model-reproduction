# BERT Model Reproduction

Notes and guidance for the BERT pre-training notebook ([2_bert.ipynb](2_bert.ipynb)). Focuses on replicating the core objectives from the paper "BERT: Pre-training of Deep Bidirectional Transformers for Language Understanding".

## Goals
- Implement the BERT Base architecture (12 layers, 768 hidden, 12 heads).
- Train with the two pre-training objectives: Masked Language Modeling (MLM) and Next Sentence Prediction (NSP).
- Provide a clear path to fine-tuning downstream tasks after pre-training.

## Notebook Outline
- **Setup**: Imports, configuration, and seed control for reproducibility.
- **Tokenizer & Vocab**: Build or load a WordPiece/BPE tokenizer; prepare special tokens ([CLS], [SEP], [MASK], [PAD]).
- **Dataset Prep**: Construct sentence pairs, apply dynamic masking (typically 15% tokens with 80/10/10 replace rules), and label NSP pairs.
- **Model**: BERT encoder stack with embedding layer (token + segment + position), transformer layers, and pooled CLS head.
- **Objectives**: MLM head over vocabulary; NSP classifier over CLS embedding.
- **Training Loop**: Batch sampling, loss computation (MLM + NSP), optimizer/scheduler, and gradient clipping if needed.
- **Evaluation**: Track MLM/NSP losses or accuracy; optionally run a small downstream sanity check (e.g., sentence pair scoring).

## Quick Start
1. Launch Jupyter and open [2_bert.ipynb](2_bert.ipynb).
2. Verify data paths and tokenizer choices in the config cell.
3. Run the notebook top-to-bottom. Adjust batch size or max sequence length to fit your GPU memory.

## Practical Tips
- **Masking strategy**: 15% tokens selected; 80% replaced with [MASK], 10% kept, 10% replaced with random token.
- **NSP sampling**: 50% true next sentences, 50% random negatives; shuffle to balance.
- **Sequence length**: Start shorter (e.g., 128) for warm-up; extend to 512 if resources allow.
- **Optimization**: AdamW with linear warmup + decay; consider gradient accumulation for small GPUs.
- **Checkpointing**: Save state dicts periodically; log losses to spot divergence early.

## TODO
- [ ] Add small sample corpus loader for quick smoke tests.
- [ ] Provide fine-tuning template (e.g., text classification) using the pre-trained checkpoint.
- [ ] Log training curves (loss/accuracy) and sample predictions for debugging.

## References
- Original paper: [BERT: Pre-training of Deep Bidirectional Transformers for Language Understanding](https://arxiv.org/abs/1810.04805)
- Official TensorFlow code: https://github.com/google-research/bert
- Hugging Face implementation: https://github.com/huggingface/transformers

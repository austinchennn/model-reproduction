# Transformer Model Reproductions

Collection of from-scratch Transformer reproductions in PyTorch. Currently includes GPT-2 and BERT notebooks plus reference materials.

## Project Structure

```
Transformer/
├── 1_gpt2.ipynb            # GPT-2 implementation notebook
├── 2_bert.ipynb            # BERT pre-training notebook
├── 2_bert_README.md        # BERT-specific notes
├── README.md               # This file
├── weights/                # Saved model weights directory
│   └── *.pth              # Model weight files
├── graph/
│   └── gpt2_architecture.png
└── paper/
    └── [2_bert] BERT Pre-training of Deep Bidirectional Transformers for Language Understanding.pdf
```

## Notebooks

- **GPT-2**: Open [1_gpt2.ipynb](1_gpt2.ipynb) for an end-to-end GPT-2 Small reproduction
  - Complete architecture (SingleHeadAttention → MultiHeadAttention → Block → GPT)
  - Training loop with AdamW optimizer and CosineAnnealingLR scheduler
  - Text generation with autoregressive sampling
  - Model weights saved in `weights/` directory
  
- **BERT**: Open [2_bert.ipynb](2_bert.ipynb) for BERT base pre-training tasks (MLM + NSP) and evaluation workflow. See [2_bert_README.md](2_bert_README.md) for details.

## Requirements

- Python 3.8+
- See [requirements.txt](../requirements.txt) in the repo root for all dependencies (PyTorch, transformers, datasets, jupyter, etc.).

## Installation

```bash
# From repo root
pip install -r requirements.txt
```

## How to Run

1. Install dependencies: `pip install -r requirements.txt` (from repo root).
2. Start Jupyter: `jupyter notebook` (from `Transformer/` or repo root).
3. Open the desired notebook (GPT-2 or BERT).
4. Run cells top-to-bottom; adjust hyperparameters in the config sections as needed.

## Assets

- GPT-2 architecture diagram: [graph/gpt2_architecture.png](graph/gpt2_architecture.png)
- Reference paper for BERT: [paper/[2_bert] BERT Pre-training of Deep Bidirectional Transformers for Language Understanding.pdf](paper/[2_bert]%20BERT%20Pre-training%20of%20Deep%20Bidirectional%20Transformers%20for%20Language%20Understanding.pdf)

## Next Steps

- ✅ GPT-2 implementation with complete training and generation pipeline
- ✅ Model weight management in `weights/` directory
- Add more advanced generation strategies (beam search, top-k, nucleus sampling)
- Provide pre-trained weights for quick inference demos

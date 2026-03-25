---
name: ml-experiment-tracking
description: Guidelines for structuring and tracking ML experiments. Use when asked to set up, organize, or log ML experiments, training runs, or model evaluations.
---

## Experiment Structure

Organize experiments with a clear directory layout:
```
experiments/
├── configs/          # YAML/JSON experiment configs
├── logs/             # Training logs (MLflow, TensorBoard, W&B)
├── checkpoints/      # Model weights (best + last)
└── results/          # Evaluation outputs, plots, metrics
```

## Key Practices

### Configuration
- Use a config file (YAML or dataclass) to control all hyperparameters — no hardcoded values in training scripts.
- Log the full config at the start of every run.
- Use a unique `run_id` or timestamp for each experiment.

### Logging (prefer MLflow or W&B)
- Log hyperparameters, metrics per epoch, and final evaluation metrics.
- Log model artifacts (weights, configs) so runs are reproducible.
- Log environment info: Python version, library versions, GPU type.

### Checkpointing
- Save `best` checkpoint (by validation metric) and `last` checkpoint separately.
- Save optimizer state alongside model weights for resumable training.

### Reproducibility
```python
import random, numpy as np, torch
def set_seed(seed: int = 42):
    random.seed(seed)
    np.random.seed(seed)
    torch.manual_seed(seed)
    torch.cuda.manual_seed_all(seed)
```

### Evaluation
- Always evaluate on a held-out test set — never use validation metrics as final performance.
- Report mean ± std over multiple seeds for important results.
- Save predictions alongside metrics for post-hoc analysis.

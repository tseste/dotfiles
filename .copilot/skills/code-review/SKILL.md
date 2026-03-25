---
name: code-review
description: Personal code review checklist for Python and ML projects. Use when asked to review code, assess quality, or suggest improvements.
---

## Code Review Checklist

### Correctness
- [ ] Does the code do what it claims to do?
- [ ] Are edge cases handled (empty inputs, None values, out-of-bounds)?
- [ ] Are error messages informative and actionable?

### Readability
- [ ] Are variable and function names clear and descriptive?
- [ ] Is the code logically structured and easy to follow?
- [ ] Is there any dead code or commented-out blocks that should be removed?

### Python Quality
- [ ] Type hints present on all public functions?
- [ ] No bare `except:` clauses (always catch specific exceptions)?
- [ ] No mutable default arguments (`def f(lst=[])` is a bug)?
- [ ] Resources properly closed (files, DB connections, HTTP sessions)?

### ML-Specific
- [ ] Are random seeds set for reproducibility?
- [ ] Is data preprocessing consistent between train/val/test splits?
- [ ] Are tensor shapes documented or asserted at critical points?
- [ ] Is the model in `eval()` mode during inference (disables dropout/batchnorm)?
- [ ] Are gradients zeroed before each backward pass (`optimizer.zero_grad()`)?

### Tests
- [ ] Is new functionality covered by tests?
- [ ] Do tests cover edge cases, not just the happy path?

## Review Tone
- Point out what's done well before listing issues.
- Categorize feedback: **bug** (must fix), **improvement** (should fix), **nit** (optional).
- Explain *why* something is a problem, not just that it is.

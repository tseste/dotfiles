---
applyTo: "**/*test*,**/tests/**,**/*_test.py,**/test_*.py"
---
## Testing Conventions
- Use `pytest` for all Python tests.
- Name tests descriptively: `test_<what>_<condition>_<expected>`. Example: `test_model_forward_empty_input_raises_error`.
- Use `pytest.fixture` for reusable setup. Keep fixtures small and focused.
- Mock external dependencies (APIs, filesystem, databases) with `unittest.mock` or `pytest-mock`.
- Prefer `pytest.mark.parametrize` over writing multiple similar test functions.
- Each test should test one thing. Avoid assertions spread across multiple logical scenarios in one test.
- Use `pytest.raises` for testing exceptions — don't use try/except in tests.

## ML Testing
- For model tests, use small dummy tensors with deterministic values — don't load real data.
- Always test that model output shapes are correct given known input shapes.
- Test that training loss decreases on a single small batch (sanity overfitting test).

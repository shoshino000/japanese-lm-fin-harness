# Japanese Language Model Financial Evaluation Harness
This is a harness for Japanese language model evaluation in the financial domain.

## Leaderboard
<!-- lb start -->
| Model | Ave. | chabsa | cma_basics | cpa_audit | fp2 | security_sales_1 |
| --- | --- | --- | --- | --- | --- | --- |
| [llm-jp/llm-jp-1.3b-v1.0](https://huggingface.co/llm-jp/llm-jp-1.3b-v1.0) | 34.57 | 41.65 | 36.84 | 18.34 | 23.37 | 52.63 |
| [cyberagent/open-calm-3b](https://huggingface.co/cyberagent/open-calm-3b) | 32.56 | 32.15 | 31.58 | 18.09 | 24.84 | 56.14 |
| [line-corporation/japanese-large-lm-3.6b](https://huggingface.co/line-corporation/japanese-large-lm-3.6b) | 31.61 | 43.25 | 26.32 | 17.59 | 25.26 | 45.61 |
| [line-corporation/japanese-large-lm-1.7b-instruction-sft](https://huggingface.co/line-corporation/japanese-large-lm-1.7b-instruction-sft) | 31.10 | 36.99 | 28.95 | 15.58 | 24.84 | 49.12 |
| [line-corporation/japanese-large-lm-3.6b-instruction-sft](https://huggingface.co/line-corporation/japanese-large-lm-3.6b-instruction-sft) | 31.08 | 37.89 | 28.95 | 17.84 | 28.63 | 42.11 |
| [cyberagent/open-calm-large](https://huggingface.co/cyberagent/open-calm-large) | 30.82 | 34.67 | 31.58 | 17.59 | 24.63 | 45.61 |
| [cyberagent/open-calm-medium](https://huggingface.co/cyberagent/open-calm-medium) | 30.64 | 32.39 | 28.95 | 18.34 | 24.42 | 49.12 |
| [cyberagent/open-calm-small](https://huggingface.co/cyberagent/open-calm-small) | 30.21 | 33.50 | 26.32 | 17.09 | 25.05 | 49.12 |
| [cyberagent/open-calm-1b](https://huggingface.co/cyberagent/open-calm-1b) | 30.01 | 36.17 | 23.68 | 18.84 | 24.00 | 47.37 |
| [line-corporation/japanese-large-lm-1.7b](https://huggingface.co/line-corporation/japanese-large-lm-1.7b) | 29.44 | 34.97 | 26.32 | 17.84 | 24.21 | 43.86 |
| [cyberagent/open-calm-7b](https://huggingface.co/cyberagent/open-calm-7b) | 26.04 | 23.96 | 26.32 | 13.82 | 24.00 | 42.11 |
<!-- lb end -->

# How to evaluate your model
 1. git clone this repository
 2. Install the requirements
    ```
    poetry install
    ```
 3. Choose your prompt template based on docs/prompt_templates.md and num_fewshots (In this official leaderboard, we use prompt template peforming the best score.)
 4. Replace `TEMPLATE` to the version and change `MODEL_PATH` . And, save the script as harness.sh
    ```
    MODEL_ARGS="pretrained=MODEL_PATH,load_in_8bit=True,other_options"
    TASK="chabsa-1.0-TEMPLATE,cma_basics-1.0-TEMPLATE,cpa_audit-1.0-TEMPLATE,security_sales_1-1.0-0.2,fp2-1.0-TEMPLATE"
    python main.py --model hf --model_args $MODEL_ARGS --tasks $TASK --num_fewshot "0,0,0,0,0" --device "cuda" --output_path "result.json"
    ```
    For reducing the computational burden, our leaderboard uses the 8bit calculation.
 5. Run the script
    ```
    poetry run bash harness.sh
    ```

Note: if you want to check the actual prompt, you can chack using the following command:
```
poetry run python check_prompt.py
```

# Citation
If you use this repository, please cite the following paper:
```
TBD
```

Or cite directory this repository:
```
@misc{Hirano2023-jlfh
    title={{Japanese Language Model Financial Evaluation Harness}},
    autors={Masanori Hirano},
    year={2024},
    url = {https://github.com/pfnet-research/japanese-lm-fin-harness}
}
```

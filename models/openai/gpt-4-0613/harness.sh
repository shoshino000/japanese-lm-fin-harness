TASK="chabsa,cma_basics,cpa_audit,security_sales_1,fp2"
python open_ai.py --model gpt-4-0613 --tasks $TASK --num_fewshot 0 --output_path "models/openai/gpt-4-0613/result.json"
# azure 2023-03-15-preview (0613): Data up to Sep 2021
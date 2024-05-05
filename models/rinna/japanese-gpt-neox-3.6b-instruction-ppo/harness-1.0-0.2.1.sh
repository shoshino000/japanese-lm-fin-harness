MODEL_ARGS="pretrained=rinna/japanese-gpt-neox-3.6b-instruction-ppo,dtype=float16"
TASK="chabsa-1.0-0.2,cma_basics-1.0-0.2.1,cpa_audit-1.0-0.2.1,fp2-1.0-0.2.1,security_sales_1-1.0-0.2.1"
python main.py --model vllm --model_args $MODEL_ARGS --tasks $TASK --num_fewshot 0 --output_path "models/rinna/japanese-gpt-neox-3.6b-instruction-ppo/result-1.0-0.2.1.json"
# a100-80gb: 1
# a30-24gb: 1
# v100-32gb: 1
# v100-16gb: 1

MODEL_ARGS="pretrained=Qwen/Qwen2-72B-Instruct,dtype=bfloat16,tensor_parallel_size=4"
TASK="chabsa-1.0-0.5,cma_basics-1.0-0.5,cpa_audit-1.0-0.5,fp2-1.0-0.5,security_sales_1-1.0-0.5"
python main.py --model hf --model_args $MODEL_ARGS --tasks $TASK --num_fewshot 0 --output_path "models/Qwen/Qwen2-72B-Instruct/result-1.0-0.5.json"
# a100-80gb: 4
# a30-24gb: 0
# v100-32gb: 0
# v100-16gb: 0

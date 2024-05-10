MODEL_ARGS="pretrained=Fugaku-LLM/Fugaku-LLM-13B-instruct,dtype=bfloat16"
TASK="chabsa-1.0-0.1,cma_basics-1.0-0.1,cpa_audit-1.0-0.1,fp2-1.0-0.1,security_sales_1-1.0-0.1"
python main.py --model hf --model_args $MODEL_ARGS --tasks $TASK --num_fewshot 0 --output_path "models/Fugaku-LLM/Fugaku-LLM-13B-instruct/result-1.0-0.1.json"
# a100-80gb: 1
# a30-24gb: 0
# v100-32gb: 0
# v100-16gb: 0

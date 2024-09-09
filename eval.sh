for data in commonsenseqa_7shot_cot_gen_734a22  gsm8k_gen FewCLUE_chid_gen humaneval_gen bbh_gen truthfulqa_gen 
do 
  CUDA_VISIBLE_DEVICES=0,1,2,3,4 opencompass --datasets $data \
    --hf-type chat \
    --hf-path meta-llama/Meta-Llama-3.1-8B-Instruct \
    --model-kwargs device_map='auto' trust_remote_code=True \
    --max-out-len 1024 \
    --debug -r latest # You can add --dry-run to auto-download the datasets first before your evaluation
done 
  # commonsenseqa_7shot_cot_gen_734a22 \
  # FewCLUE_chid_gen \
  # humaneval_gen \
  # bbh_gen \
  # truthfulqa_gen \
  # for Qwen2-7B-Instruct
  # --hf-path Qwen/Qwen2-7B-Instruct

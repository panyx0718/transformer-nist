paddlecloud job train --cluster_name paddle-jpaas-ai00 \
--job_version custom-fluid \
--k8s_gpu_type baidu/gpu_p40 \
--k8s_gpu_cards 4 \
--k8s_priority high \
--k8s_walltime 10:00:00 \
--k8s_memory 100Gi \
--k8s_is_local 0 \
--k8s_trainers 8 \
--k8s_pservers_count 8 \
--k8s_pscpu_cores 2 \
--k8s_psmemory 20Gi m_nmt nmt/run.py nmt/common.py \
--version_image_addr "registry.baidu.com/paddlecloud/paddlecloud-runenv-centos6u3-online:paddlecloud-latest-dev-gcc482-cuda8.0_cudnn5"
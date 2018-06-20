export PADDLE_PSERVERS=127.0.0.1
export POD_IP=127.0.0.1
export PADDLE_TRAINERS_NUM=2
export PADDLE_IS_LOCAL=0

export PADDLE_TRAINER_ID=0
export TRAINING_ROLE=PSERVER
export PADDLE_PORT=6177
sh run_transform.sh &>log/pserver_4.log &

sleep 60

export CUDA_VISIBLE_DEVICES=0,1
export TRAINING_ROLE=TRAINER
export PADDLE_TRAINER_ID=0
export PADDLE_PORT=6177
sh run_transform.sh &> log/trainer1.log &

export CUDA_VISIBLE_DEVICES=4,5
export TRAINING_ROLE=TRAINER
export PADDLE_TRAINER_ID=1
export PADDLE_PORT=6177
sh run_transform.sh

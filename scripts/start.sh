source .venv/bin/activate
current=$(date +%Y-%m-%d_%H-%M-%S)
logfile=$current".log"

mkdir -p logs

nohup python ./smonitor.py >> "logs/"$logfile 2>&1 &

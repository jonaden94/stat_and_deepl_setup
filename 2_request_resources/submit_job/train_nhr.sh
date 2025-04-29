#!/bin/bash
#SBATCH -p kisski            # partition to submit job to. You can also submit a "non-interactive" job like this to grete:interactive. The name is misleading!
#SBATCH -G A100:1            # optionally specify which gpu to request and how many e.g. A100:2 (Mutli-gpu training is not relevant for this course)
#SBATCH -t 0-00:01:00        # time limit in days-hours:minutes:seconds
#SBATCH --output=/dev/null   # you can delete this line. Then it will automatically log stdout to current_work_dir/output/<jobid>.out
#SBATCH --error=/dev/null    # you can delete this line. Then it will automatically log stderr to current_work_dir/output/<jobid>.out

# optionally put "#SBATCH -C inet as slurm option" and comment out the below lines for internet access on compute node (e.g. for downloading/uploading stuff)
# export HTTPS_PROXY="http://www-cache.gwdg.de:3128"
# export HTTP_PROXY="http://www-cache.gwdg.de:3128"

# define directory to log output to (not needed when deleting the --output and --error lines above)
OUTPUT_DIR="$HOME/output"
mkdir -p $OUTPUT_DIR  # Ensure the directory exists
exec > "$OUTPUT_DIR/job-${SLURM_JOB_ID}.out" 2>&1

# activate conda
echo "activating conda"
source $HOME/conda/etc/profile.d/conda.sh
conda activate deepl

# running python script
echo "running script"
python $HOME/stat_and_deepl_setup/2_request_resources/submit_job/train.py
echo "Python script executed"

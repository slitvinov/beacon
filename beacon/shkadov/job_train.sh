#!/bin/bash
#
#SBATCH --job-name=drl_shkadov
#SBATCH --output=drl_shkadov.txt
#SBATCH --partition=MAIN
#SBATCH --qos=hpc
#
#SBATCH --exclusive
#SBATCH --nodes 1
#SBATCH --ntasks 8
#SBATCH --ntasks-per-core 1
#SBATCH --threads-per-core 1
#SBATCH --time=7-00:00:00
#
#export SLURM_CPU_BIND=none
#module load cimlibxx/drl/dgf
source /home/jviquerat/scratch/dragonfly/venv/bin/activate
module load openmpi/4.1.1
#dgf --train ppo.json
srun dgf --train ppo_buffer.json

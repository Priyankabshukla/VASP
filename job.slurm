#!/bin/sh
#SBATCH --job-name="MeO2MD2KSpin"
#SBATCH --output="report.out"
#SBATCH --partition=mpi
#SBATCH --cluster=mpi
#SBATCH --nodes=2
#SBATCH --tasks-per-node=48
#SBATCH --cpus-per-task=1
#SBATCH --time=6-00:00
#SBATCH --qos=short
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=pbs13@pitt.edu

module purge
module load intel/2017.1.132
module load intel-mpi/2017.1.132
module load mkl
module load fftw
module load vasp/6.4.1


srun --mpi=pmi2 vasp_std

crc-job-stats

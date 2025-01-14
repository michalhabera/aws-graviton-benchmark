#!/bin/bash -l
#SBATCH --time=0-00:03:00
#SBATCH -p batch
#SBATCH -n 32
#SBATCH --exclusive
source $HOME/spack/share/spack/setup-env.sh
spack env activate fenicsx
cd $HOME/performance-tests/build
srun -c 1 ./dolfinx-scaling-test \
--problem_type poisson \
--scaling_type weak \
--ndofs 500000 \
-log_view \
-ksp_view \
-ksp_type cg \
-ksp_rtol 1.0e-8 \
-pc_type hypre \
-pc_hypre_type boomeramg \
-pc_hypre_boomeramg_strong_threshold 0.7 \
-pc_hypre_boomeramg_agg_nl 4 \
-pc_hypre_boomeramg_agg_num_paths 2 \
-options_left

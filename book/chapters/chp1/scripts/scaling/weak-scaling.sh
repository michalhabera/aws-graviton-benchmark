#!/bin/bash
sbatch -N 2 launcher.sh 
sbatch -N 4 launcher.sh
sbatch -N 8 launcher.sh
sbatch -N 16 launcher.sh

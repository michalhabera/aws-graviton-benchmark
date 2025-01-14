Compile `stream_mpi.c` with
```
mpicc stream_mpi.c -o stream_mpi -Ofast -DSTREAM_ARRAY_SIZE=16000000
```
and run
```
for i in {1..64}; do mpirun -n $i ./stream_mpi >> stream_mybenchmark_Ofast.log; done
```
for benchmarking up to 64 processes when running interactive session on a single node.

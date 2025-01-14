Compile `stream_mpi.c` with
```
mpicc stream_mpi.c -o stream_mpi -Ofast -DSTREAM_ARRAY_SIZE=16000000
```
and run
```
for i in {1..64}; do mpirun -n $i ./stream_mpi >> stream_mybenchmark_Ofast.log; done
```
for benchmarking up to 64 processes when running interactive session on a single node.
For University of Luxembourg Aion instances use STREAM_ARRAY_SIZE=256000000 and for Amazon
AWS c7g use STREAM_ARRAY_SIZE=80000000 in order to make sure that the allocated memory
does not fit into the cache memory.

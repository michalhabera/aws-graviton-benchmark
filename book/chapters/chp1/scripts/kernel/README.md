Clone `https://github.com/michalhabera/local_operator` and run
```
python3 run.py --problem Laplacian  --degree 1 8 --form_compiler=ffcx --action --global_size 10000000 --output_file=output/laplacian.csv --conf compilers-generic.yaml
```
Use `compilers-aion.yaml` for compiler setting tuned for University of Luxembourg Aion instances,
and `compilers-graviton3.yaml` for Amazon AWS c7g.metal instances.
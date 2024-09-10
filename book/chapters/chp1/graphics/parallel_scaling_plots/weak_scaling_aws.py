import os
import re
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

plt.rcParams["font.family"] = "sans-serif"
plt.rcParams["font.sans-serif"] = "Avenir"
plt.rcParams["font.size"] = 7

runs = ["312", "314", "319", "490"]
metrics = ["Create boundary conditions",
           "Create RHS function",
           "Assemble matrix",
           "Assemble vector", "Create Mesh",
           "FunctionSpace", "Solve"]

files = [f"results/poisson/mpi_test_{run}.log" for run in runs]

results = []
for f in files:
    with open(f, "r") as fo:
        text = fo.read()
        result = {}
        for m in metrics:
            rank_match = "([0-9]+) MPI"
            found = re.findall(rank_match, text)
            result["rank"] = int(found[0])

            time_match = "ZZZ " + m + r"\s+\|\s+\d+\s+(?P<time>\d+\.\d+).*"
            found = re.findall(time_match, text)
            assert(len(found) == 1)
            result[m] = float(found[0])
        results.append(result)

df = pd.DataFrame.from_dict(results)
df = df.set_index("rank")
df = df.rename(columns={"Create Mesh": "Create\n mesh", "FunctionSpace": "Create\n function space",
                        "Assemble matrix": "Assemble\n matrix"})
df = df[["Create\n mesh", "Create\n function space", "Assemble\n matrix", "Solve"]]

df.plot(kind="bar", figsize=(4, 2.2))
plt.ylim([0.0, 20.0])
plt.xlabel("Num. processes")
plt.ylabel("time [s]")
# plt.title("Weak scaling, Poisson, ~500k dofs per process. Big nodes. 50% utilisation.", fontsize=9)
plt.legend(bbox_to_anchor=(0, 1.02, 1, 0.2), loc="lower left", mode="expand", ncol=4)
plt.tight_layout()
plt.savefig("output/weak_scaling_aws_big_poisson.pdf")
plt.savefig("output/weak_scaling_aws_big_poisson.png", dpi=600)

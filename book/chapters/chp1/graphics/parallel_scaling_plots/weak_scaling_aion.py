import os
import re
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

plt.rcParams["font.family"] = "sans-serif"
plt.rcParams["font.sans-serif"] = "Times New Roman"
plt.rcParams["font.size"] = 7

runs = ["720166", "720167", "720168", "720169"]

metrics = ["Create boundary conditions",
           "Create RHS function",
           "Assemble matrix",
           "Assemble vector", "Create Mesh",
           "FunctionSpace", "Solve"]

files = [f"output/slurm-{run}.out" for run in runs]

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

        its_match = r"\*\*\* Number of Krylov iterations: (.[0-9])"
        found = re.findall(its_match, text)
        assert(len(found) == 1)
        result["Krylov iterations"] = int(found[0])

        results.append(result)

df = pd.DataFrame.from_dict(results)
df = df.set_index("rank")

print(df.iloc[:]["Create Mesh"] / df.iloc[0]["Create Mesh"])
print(df.iloc[:]["Assemble matrix"] / df.iloc[0]["Assemble matrix"])
print(df.iloc[:]["Solve"] / df.iloc[0]["Solve"])
print(df.iloc[:]["Krylov iterations"] / df.iloc[0]["Krylov iterations"])

df = df.rename(columns={"Create Mesh": "Create\n mesh", "FunctionSpace": "Create\n function space",
                        "Assemble matrix": "Assemble\n matrix"})
df = df[["Create\n mesh", "Assemble\n matrix", "Solve"]]

df.plot(kind="bar", figsize=(4, 2.2))
plt.ylim([0.0, 17])
plt.xlabel("Num. processes")
plt.ylabel("Time [s]")
# plt.title("Weak scaling, Poisson, ~500k dofs per process. Aion. 50% utilisation.", fontsize=9)
plt.legend(bbox_to_anchor=(0, 1.02, 1, 0.2), loc="lower left", mode="expand", ncol=4)
plt.tight_layout()
plt.savefig("output/weak_scaling_aion_poisson.pdf")
plt.savefig("output/weak_scaling_aion_poisson.png", dpi=600)

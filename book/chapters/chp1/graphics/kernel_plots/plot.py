import numpy as np
import matplotlib
import matplotlib.pyplot as plt
import pandas as pd
import argparse

parser = argparse.ArgumentParser()
parser.add_argument("-m", "--machines", nargs="+", required=True)
parser.add_argument("-l", "--labels", nargs="+", required=True)

args = parser.parse_args()

plt.rcParams["font.family"] = "sans-serif"
plt.rcParams["font.sans-serif"] = "Times"
plt.rcParams["font.size"] = 7

data = pd.DataFrame()

flags_map = {" \"-O2 -fno-slp-vectorize -fno-vectorize\"": "O2, no vec.",
             " \"-O2 -fno-tree-vectorize\"": "O2, no vec.",
             " \"-Ofast -march=znver2 -mtune=znver2 -fno-slp-vectorize -fno-vectorize\"": "Ofast, native, no vec.",
             " \"-Ofast -march=znver2 -mtune=znver2\"": "Ofast, native, vectorized",
             " \"-Ofast -march=znver2 -mtune=znver2 -fno-tree-vectorize\"": "Ofast, native, no vec.",
             " \"-Ofast -mcpu=neoverse-v1\"": "Ofast, native, vectorized",
             " \"-Ofast -mcpu=neoverse-v1 -fno-tree-vectorize\"": "Ofast, native, no vec.",
             " \"-Ofast -mcpu=neoverse-v1 -fno-slp-vectorize -fno-vectorize\"": "Ofast, native, no vec."}

xlabels = ["O2, no vec.", "Ofast, native,\n no vec.", "Ofast, native,\n vectorized"]
xs = np.arange(len(xlabels))

for machine in args.machines:
    _data = pd.read_csv(f"{machine}.csv")
    _data.loc[:, "flags"] = _data["flags"].apply(lambda x: flags_map[x])
    data[machine] = _data.groupby(["compiler", "degree", "flags"]).mean("time")["time"]

data = data.reset_index()
for (compiler, degree), group in data.groupby(["compiler", "degree"]):
    plt.figure(figsize=(2.3, 1.7))
    num_machines = len(args.machines)
    total_width = 0.6
    width = total_width / num_machines
    shift = np.linspace(-total_width/2 + width/2, total_width/2 - width/2, num_machines)

    for i, machine in enumerate(args.machines):
        plt.bar(xs - shift[i], group[machine], width=width, label=args.labels[i])

    plt.xticks(fontsize=8, labels=xlabels, ticks=xs)
    plt.ylabel("time [s]")
    plt.legend()
    # plt.tight_layout()
    plt.savefig(f"local_operator_{compiler.strip()}_deg{degree}.pdf", bbox_inches="tight")

import numpy as np
import matplotlib
import matplotlib.pyplot as plt
import re
import csv

plt.rcParams["font.family"] = "sans-serif"
plt.rcParams["font.sans-serif"] = "Avenir"
plt.rcParams["font.size"] = 7


with open("aion.csv") as file:
    fin = csv.reader(file)
    aion = list(fin)

with open("graviton3.csv") as file:
    fin = csv.reader(file)
    graviton3 = list(fin)

plt.figure(figsize=(2.5, 1.7))

for compiler in ["gcc", "clang"]:
    for deg in [2, 6]:
        aion_deg = [r for r in aion if r[5] == f" {deg}"]
        graviton3_deg = [r for r in graviton3 if r[5] == f" {deg}"]

        _aion = [r for r in aion_deg if r[2] == f" {compiler}"]
        _graviton3 = [r for r in graviton3_deg if r[2] == f" {compiler}"]

        xlabels = ["Ofast, native,\n vectorized", "Ofast, native,\n no vec.", "O2, no vec."]
        xs = np.arange(len(xlabels))

        plt.clf()

        aion_times = [float(r[-1]) for r in _aion]
        graviton3_times = [float(r[-1]) for r in _graviton3]

        plt.bar(xs - 0.15, graviton3_times, width=0.3, label="AWS c7g")
        plt.bar(xs + 0.15, aion_times, width=0.3, label="Aion")

        speedups = np.array(aion_times) / np.array(graviton3_times)

        for i, speedup in enumerate(speedups):
            plt.text(xs[i] - 0.25, 1.05 * graviton3_times[i], f"{speedup:.2f}x")

        if deg == 6:
            plt.ylim((0, 1.7))

        plt.xticks(labels=xlabels, ticks=xs)
        plt.ylabel("time [s]")
        plt.legend(loc="lower right")
        plt.tight_layout()
        plt.savefig(f"local_operator_{compiler}_deg{deg}.pdf")

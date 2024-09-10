import numpy as np
import matplotlib
import matplotlib.pyplot as plt
import re

plt.rcParams["font.family"] = "sans-serif"
plt.rcParams["font.sans-serif"] = "Times"
plt.rcParams["font.size"] = 7

files = {
         "stream_graviton_1x64.log": ("AWS c7g, 1x64", "-", 300),
         "stream_aion_1x128.log": ("Aion, 1x128", "-", 400),
         }


def parse_bandwidth(files):
    bws = {}
    for file in files.keys():
        bws[file] = []

        with open(file) as f:
            lines = f.readlines()
            for line in lines:
                idx = line.find("Copy:")
                if idx == 0:
                    res = re.findall(r"\d+\.\d+", line)
                    bws[file].append(float(res[0]) / 1024)
    return bws


bws = parse_bandwidth(files)

plt.figure(figsize=(2.3, 1.9))
for file, (name, style, max_bw) in files.items():
    num_procs = len(bws[file])
    p = plt.plot(range(1, num_procs+1), bws[file], style, label=name)
    plt.axhline(max_bw, color=p[-1].get_color(), linestyle="dashed")

plt.ylabel("Bandwidth [GB/s]")
plt.xlabel("Num. processes")
plt.legend()
plt.tight_layout()
plt.savefig("stream_single_node.pdf")

plt.clf()

##############################################################################
# Multi-node
##############################################################################

files = {
         "stream_graviton_8x8.log": ("AWS c7g, 8x8", "-"),
         "stream_aion_8x8.log": ("Aion, 8x8", "-"),
         }

bws = parse_bandwidth(files)

for file, (name, style) in files.items():
    num_procs = len(bws[file])
    plt.plot(range(1, num_procs+1), bws[file], style, label=name)

plt.ylabel("Bandwidth [GB/s]")
plt.xlabel("Num. processes")
plt.legend()
plt.tight_layout()
# plt.grid()
plt.savefig("stream_multi_node.pdf")

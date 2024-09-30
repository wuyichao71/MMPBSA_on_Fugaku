# Preform MM/PBSA on Fugaku

## Introduction

> It is not recommanded to perform MM/PBSA on the Fugaku compute node. Although each compute node has 48 cores, the RAM for each compute node is only 32G. However, performing MM/PBSA parallelly needs a large amount of RAM. So when the system is large, it is impossible to used all the cores in one node. It is a kind of waste of compute resource!
> **So please be careful!**

In this tutorial, we will try to perform MM/PBSA on the fugaku. First, we will install software for perform MM/PBSA, then we will perform MM/PBSA on the compute node.

Currently, we only performed MM/PBSA analysis. So if there are other errors, we will try to correct it when we find it. You can also report it to us.

## Install software on Fugaku

To use `amber` software package on the Fugaku, you should apply for the use of commercial software. The manual of how to apply for is here:  
[https://www.fugaku.r-ccs.riken.jp/doc_root/en/user_guides/Commercial_Software/index.html](https://www.fugaku.r-ccs.riken.jp/doc_root/en/user_guides/Commercial_Software/index.html)

There are two recommanded softwares can be used to perform MM/PBSA analysis -- `MMPBSA.py` and `gmx_MMPBSA`. `mm_pbsa.pl` is too old to use easily. The use of `MMPBSA.py` needs the amber format topologies and trajectories, and the use of `gmx_MMPBSA` needs gromacs format topologies and trajectories. The `MMPBSA.py` is not included in the `amber` on Fugaku, so we should install both in this tutorial.

We will first to install the `MMPBSA.py` and then install the `gmx_MMPBSA`.

At first, Lets's clone the repository.

```
git clone https://github.com/wuyichao71/MMPBSA_on_Fugaku.git
```

### Install `MMPBSA.py`

The `MMPBSA.py` actually is a python script, and it needs a package named `MMPBSA_mods`. We have copy the `MMPBSA_mods` package from installed `amber` package to `MMPBSA_src`. 
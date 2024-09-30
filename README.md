# Preform MM/PBSA on Fugaku

## Introduction

> It is not recommanded to perform MM/PBSA on the Fugaku compute node. Although each compute node has 48 cores, the RAM for each compute node is only 32G. However, performing MM/PBSA parallelly needs a large amount of RAM. So when the system is large, it is impossible to used all the cores in one node. It is a kind of waste of compute resource!
> **So please be careful!**

In this tutorial, we will try to perform MM/PBSA on the fugaku. First, we will install software for perform MM/PBSA, then we will perform MM/PBSA on the compute node.

Currently, we only performed MM/PBSA analysis. So if there are other errors, we will try to correct it when we find it. You can also report it to us.

## Install software on Fugaku

To use `amber` software package on the Fugaku, you should apply for the use of commercial software. The manual of how to apply for is here:
[https://www.fugaku.r-ccs.riken.jp/doc_root/en/user_guides/Commercial_Software/index.html](https://www.fugaku.r-ccs.riken.jp/doc_root/en/user_guides/Commercial_Software/index.html)

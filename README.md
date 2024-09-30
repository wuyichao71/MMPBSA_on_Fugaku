# Preform MM/PBSA on Fugaku

## Introduction

It is not recommanded to perform MM/PBSA on the Fugaku compute node.
Although each compute node has 48 cores, but the memory for each compute node is only 32G.
Performing MM/PBSA parallelly needs a large amount of RAM. So when the system is large, it is impossible to used all the cores in one node.  
So please be careful.

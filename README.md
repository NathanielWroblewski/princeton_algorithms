Princeton Algorithms
====================

My solutions in ruby to princeton's algorithms course on coursera (https://class.coursera.org/algs4partI-003/class)

Quick Find
---
Defect: Union is too expensive.  N union commands on N objects takes quadratic (N^2) time.

Quick Union
---
Defect: Trees can get tall.  Find too expensive.  Union needs to find roots.

Weighted Quick Union
---
Find is proportional to the depth, but the depth of any node is at most lg(N) where N is the total number of nodes.  Union is constant time, given roots.

| Algorithm           | Initialize    | Union | Find  |
|---------------------|:-------------:|:-----:| -----:|
|quick-find           | N             | N     | 1     |
|quick-union          | N             | N     | N     |
|weighted quick-union | N             | lg N  | lg N  |

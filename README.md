Princeton Algorithms
====================

My solutions in ruby to princeton's algorithms course on coursera (https://class.coursera.org/algs4partI-003/class)

QuickFind
---
Defect: Union is too expensive.  N union commands on N objects takes quadratic (N^2) time.

QuickUnion
---
Defect: Trees can get tall.  Find too expensive.  Union needs to find roots.

| Algorithm | Initialize    | Union | Find  |
|-----------|:-------------:|:-----:| -----:|
|quick-find | N             | N     | 1     |
|quick-union| N             | N     | N     |

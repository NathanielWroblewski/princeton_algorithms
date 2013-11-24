Princeton Algorithms
====================

My solutions in ruby to princeton's algorithms course on coursera (https://class.coursera.org/algs4partI-003/class)

QuickFind
---
Defect: Union is too expensive.  N union commands on N objects takes quadratic (N^2) time.

| Initialize    | Union | Find  |
| ------------- |:-----:| -----:|
| N             | N     | 1     |

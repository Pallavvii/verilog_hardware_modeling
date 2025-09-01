# Comparator 

A **comparator** is a digital combinational circuit that compares two binary numbers and determines their relationship.  
For a 2-bit equality comparator, the circuit outputs **`z = 1`** when the two inputs are equal, otherwise **`z = 0`**.


##  Working Principle

- The output depends **only on the present inputs** (no memory elements), hence a comparator is a **combinational circuit**.
- In this design:
  - Inputs: `x[1:0]`, `y[1:0]` (two 2-bit numbers).
  - Output: `z` (1 if `x == y`, else 0).


##  Truth Table

| x (decimal) | y (decimal) | z (output) |
|-------------|-------------|------------|
| 0           | 0           | 1 |
| 1           | 1           | 1 |
| 2           | 2           | 1 |
| 3           | 3           | 1 |
| otherwise   | –           | 0 |


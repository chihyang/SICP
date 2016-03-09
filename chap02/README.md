## Notes on exercise 2.11.

Let `(a,b)` and `(c,d)` be two pairs of ordered numbers(i.e. `a < b` and `c < d`).
There are nine cases about the signness of the endpoints:

| No. | a  | b  | c  | d  |
|-----|----|----|----|----|
| 1   | \- | \- | \- | \- |
| 2   | \- | \- | \- | +  |
| 3   | \- | \- | +  | +  |
| 4   | \- | +  | \- | \- |
| 5   | \- | +  | \- | +  |
| 6   | \- | +  | +  | +  |
| 7   | +  | +  | \- | \- |
| 8   | +  | +  | \- | +  |
| 9   | +  | +  | +  | +  |

It's easy to show that under eight cases, the upper bound and lower bound of the
product of two intervals are fixed, which are listed as below:

| No. | bound       |
|-----|-------------|
|   1 | ac, bd      |
|   2 | ad, ac      |
|   3 | bc, ad      |
|   4 | ad, ac      |
|   5 | **unfixed** |
|   6 | ad, bc      |
|   7 | ad, bc      |
|   8 | ad, bc      |
|   9 | ac, bd      |

This means only `case 5` requires more than twice multiplications.

Summerize the cases above, we get:

```Scheme
; (++,--), (--,++), (++,-+), (-+,++)
(make-interval (* (upper-bound x) (lower-bound y))
               (* (upper-bound y) (lower-bound x)))
; (++,++), (--,--)
(make-interval (* (lower-bound x) (lower-bound y))
               (* (upper-bound x) (upper-bound y)))
; (--,-+)
(make-interval (* (lower-bound x) (lower-bound y))
               (* (lower-bound x) (upper-bound y)))
; (-+,--)
(make-interval (* (lower-bound y) (lower-bound x))
               (* (lower-bound y) (upper-bound x)))
; (-+,-+)
(let ((p1 (* (lower-bound x) (lower-bound y)))
      (p2 (* (lower-bound x) (upper-bound y)))
      (p3 (* (upper-bound x) (lower-bound y)))
      (p4 (* (upper-bound x) (upper-bound y))))
  (make-interval (min p1 p2 p3 p4)
               (max p1 p2 p3 p4)))
```

## Notes on exercise 2.36.

**Hints**: The key is to construct a list that takes first elements of each sublist and a list that takes
the rest of the elements.

**Reference**: See [here](https://sicp.readthedocs.org/en/latest/chp2/36.html) for details.

## Notes on exercise 2.57.

This exercise needs to use the dotted-tail notation introduced in exercise
2.20. The last parameter of *make-sum* and *make-product* should be a list, so
that they support the expressions that have more than two operands.

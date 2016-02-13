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
               (* (upper-bound y) (upper-bound x)))
; (++,++), (--,--)
(make-interval (* (lower-bound x) (lower-bound y))
               (* (upper-bound x) (upper-bound y)))
; (--,-+)
(make-interval (* (lower-bound x) (lower-bound y))
               (* (lower-bound x) (upper-bound y)))
; (+-,--)
(make-interval (* (lower-bound y) (lower-bound x))
               (* (lower-bound y) (upper-bound x)))
```

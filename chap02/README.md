## Notes on exercise 2.11.

Let `(a,b)` and `(c,d)` be two pairs of ordered numbers. There are nine cases:

| a  | b  | c  | d  |
|----|----|----|----|
| \- | \- | \- | \- |
| \- | \- | \- | +  |
| \- | \- | +  | +  |
| \- | +  | \- | \- |
| \- | +  | \- | +  |
| \- | +  | +  | +  |
| +  | +  | \- | \- |
| +  | +  | \- | +  |
| +  | +  | +  | +  |

Under eight cases, the upper bound and lower bound of the product of the interval are fixed, which is listed as below:

|No. | bound  |
|----|--------|
| 1  | ac, bd |
| 2  | ad, ac |
| 3  | bc, ad |
| 4  | ad, ac |
| 5  | unfixed|
| 6  | ad, bc |
| 7  | ad, bc |
| 8  | ad, bc |
| 9  | ac, bd |

Which means only case 5 requires more than twice multiplications.

# Cinema Seating

A group of _n_ friends are going to see a film. They would like to find a spot
where they can sit next to each other in the same row. A cinema's seat layout
can be represented as a 2-D matrix, where `0`s represent empty seats and `1`s
represent taken seats.

```
[[1, 0, 0, 0, 1, 1, 1],
[1, 1, 1, 0, 1, 1, 1],
[1, 0, 1, 0, 1, 0, 1],
[1, 1, 0, 1, 1, 0, 1],
[1, 0, 1, 1, 1, 1, 1],
[1, 0, 1, 1, 0, 0, 0]]
```

Create a function that, given a seat layout and the number of friends _n_,
returns the number of available spots for all _n_ friends to sit together. In
the above example, if n = 3, there would be 2 spots (the first row and last
row).

## Examples

```
groupSeats([
  [1, 0, 1, 0, 1, 0, 1],
  [0, 1, 0, 1, 0, 1, 0],
  [0, 0, 1, 1, 1, 1, 1],
  [1, 0, 1, 1, 0, 0, 1],
  [1, 1, 1, 0, 1, 0, 1],
  [0, 1, 1, 1, 1, 0, 0]
], 2) ➞ 3
```

```
groupSeats([
  [1, 0, 1, 0, 1, 0, 1],
  [0, 1, 0, 0, 0, 0, 0],
], 4) ➞ 2
```

## Notes

Multiple free arrangements that overlap still count as distinct arrangements
(see example #2).

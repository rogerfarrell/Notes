---
title: Deriving recursive expressions
subtitle: '[[functional-programming]]'
---

Every recursive solution is made up of two parts:

1. the recurrence relation
2. the base cases

```haskell
sumTo :: Int -> Int
-- the base case
sumTo 0 = 0
-- the recurrence relation
sumTo n = n + sumTo (n - 1)
```

# Deriving the recurrence relation

```haskell
sumTo n = n + sumTo (n - 1)
```

The recurrence relation is the recursive part of a recursive solution. To find the recursive relation for a give problem, assume your function already has a correct implementation. Using your imaginarily implemented function, solve the simplest sub problem. This is a problem which is only one step from your desired result. For a `sumTo` function which adds numbers from `1` to `n`, this is `sumTo (n - 1)`.

Once we have expressed the sub problem, we can express the complete problem by adding the final step. In this case, we add `n` to `sumTo (n - 1)`

# Finding the base cases

```haskell
-- the base case
sumTo 0 = 0
```

Base cases are easier to find. We just need to determine the possible inputs for which no recursion is required. In our example, `0` is the only qualifying input (not accounting for negative inputs). The sum of 0 and all previous non-negative integers (there are none) is 0.

---

- [How to solve any recursion problem](https://medium.com/@mukhopadhyaypushan42/how-to-solve-any-recursion-problem-master-of-solving-recursion-problems-7d55496a450a)

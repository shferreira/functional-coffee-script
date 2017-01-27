test "simple pattern", ->
  f =
    (a, 1) -> a * 10
    (a, b) -> a + b
    (1) -> 1
    ('ones') -> 111
    -> 0

  eq f(1,1), 10
  eq f(1,2), 3
  eq f(1), 1
  eq f('ones'), 111
  eq f(), 0

test "pattern matching - factorial", ->
  fac =
    (0) -> 1
    (1) -> 1
    (n) -> n * fac(n - 1)

  eq fac(0), 1
  eq fac(1), 1
  eq fac(2), 2
  eq fac(3), 6
  eq fac(4), 24

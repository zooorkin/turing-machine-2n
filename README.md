# Машина Тьюринга
Вычисление функции f(n)=2*n на Машине Тьюринга

## Результат работы программы
Счёт ведётся с нуля

```
     TURING MACHINE
    ┌──────────────────────
  0 │ _ _ _ _ _ _ _ _ _ _ 
    └───┬──────────────────

    ┌──────────────────────
  1 │ _ 1 1 1 1 _ _ _ _ _ 
    └───┬──────────────────

    ┌──────────────────────
  2 │ _ 1 1 1 1 _ _ _ _ _ 
    └─┬────────────────────

    ┌──────────────────────
  3 │ ☺ 1 1 1 1 _ _ _ _ _ 
    └───┬──────────────────

    ┌──────────────────────
  4 │ ☺ 1 1 1 1 _ _ _ _ _ 
    └─────┬────────────────

    ┌──────────────────────
  5 │ ☺ 1 1 1 1 _ _ _ _ _ 
    └───────┬──────────────

    ┌──────────────────────
  6 │ ☺ 1 1 1 1 _ _ _ _ _ 
    └─────────┬────────────

    ┌──────────────────────
  7 │ ☺ 1 1 1 1 _ _ _ _ _ 
    └───────────┬──────────

    ┌──────────────────────
  8 │ ☺ 1 1 1 1 _ _ _ _ _ 
    └─────────┬────────────

    ┌──────────────────────
  9 │ ☺ 1 1 1 3 _ _ _ _ _ 
    └───────┬──────────────

    ┌──────────────────────
 10 │ ☺ 1 1 2 3 _ _ _ _ _ 
    └─────────┬────────────

    ┌──────────────────────
 11 │ ☺ 1 1 2 3 _ _ _ _ _ 
    └───────────┬──────────

    ┌──────────────────────
 12 │ ☺ 1 1 2 3 2 _ _ _ _ 
    └─────────┬────────────

    ┌──────────────────────
 13 │ ☺ 1 1 2 3 2 _ _ _ _ 
    └───────┬──────────────

    ┌──────────────────────
 14 │ ☺ 1 1 2 3 2 _ _ _ _ 
    └─────┬────────────────

    ┌──────────────────────
 15 │ ☺ 1 2 2 3 2 _ _ _ _ 
    └───────┬──────────────

    ┌──────────────────────
 16 │ ☺ 1 2 2 3 2 _ _ _ _ 
    └─────────┬────────────

    ┌──────────────────────
 17 │ ☺ 1 2 2 3 2 _ _ _ _ 
    └───────────┬──────────

    ┌──────────────────────
 18 │ ☺ 1 2 2 3 2 _ _ _ _ 
    └─────────────┬────────

    ┌──────────────────────
 19 │ ☺ 1 2 2 3 2 2 _ _ _ 
    └───────────┬──────────

    ┌──────────────────────
 20 │ ☺ 1 2 2 3 2 2 _ _ _ 
    └─────────┬────────────

    ┌──────────────────────
 21 │ ☺ 1 2 2 3 2 2 _ _ _ 
    └───────┬──────────────

    ┌──────────────────────
 22 │ ☺ 1 2 2 3 2 2 _ _ _ 
    └─────┬────────────────

    ┌──────────────────────
 23 │ ☺ 1 2 2 3 2 2 _ _ _ 
    └───┬──────────────────

    ┌──────────────────────
 24 │ ☺ 2 2 2 3 2 2 _ _ _ 
    └─────┬────────────────

    ┌──────────────────────
 25 │ ☺ 2 2 2 3 2 2 _ _ _ 
    └───────┬──────────────

    ┌──────────────────────
 26 │ ☺ 2 2 2 3 2 2 _ _ _ 
    └─────────┬────────────

    ┌──────────────────────
 27 │ ☺ 2 2 2 3 2 2 _ _ _ 
    └───────────┬──────────

    ┌──────────────────────
 28 │ ☺ 2 2 2 3 2 2 _ _ _ 
    └─────────────┬────────

    ┌──────────────────────
 29 │ ☺ 2 2 2 3 2 2 _ _ _ 
    └───────────────┬──────

    ┌──────────────────────
 30 │ ☺ 2 2 2 3 2 2 2 _ _ 
    └─────────────┬────────

    ┌──────────────────────
 31 │ ☺ 2 2 2 3 2 2 2 _ _ 
    └───────────┬──────────

    ┌──────────────────────
 32 │ ☺ 2 2 2 3 2 2 2 _ _ 
    └─────────┬────────────

    ┌──────────────────────
 33 │ ☺ 2 2 2 3 2 2 2 _ _ 
    └───────┬──────────────

    ┌──────────────────────
 34 │ ☺ 2 2 2 3 2 2 2 _ _ 
    └─────┬────────────────

    ┌──────────────────────
 35 │ ☺ 2 2 2 3 2 2 2 _ _ 
    └───┬──────────────────

    ┌──────────────────────
 36 │ ☺ 2 2 2 3 2 2 2 _ _ 
    └─┬────────────────────

    ┌──────────────────────
 37 │ _ 2 2 2 3 2 2 2 _ _ 
    └───┬──────────────────

    ┌──────────────────────
 38 │ _ 1 2 2 3 2 2 2 _ _ 
    └─────┬────────────────

    ┌──────────────────────
 39 │ _ 1 1 2 3 2 2 2 _ _ 
    └───────┬──────────────

    ┌──────────────────────
 40 │ _ 1 1 1 3 2 2 2 _ _ 
    └─────────┬────────────

    ┌──────────────────────
 41 │ _ 1 1 1 1 2 2 2 _ _ 
    └───────────┬──────────

    ┌──────────────────────
 42 │ _ 1 1 1 1 1 2 2 _ _ 
    └─────────────┬────────

    ┌──────────────────────
 43 │ _ 1 1 1 1 1 1 2 _ _ 
    └───────────────┬──────

    ┌──────────────────────
 44 │ _ 1 1 1 1 1 1 1 _ _ 
    └─────────────────┬────

    ┌──────────────────────
 45 │ _ 1 1 1 1 1 1 1 _ _ 
    └───────────────┬──────

    ┌──────────────────────
 46 │ _ 1 1 1 1 1 1 1 _ _ 
    └─────────────┬────────

    ┌──────────────────────
 47 │ _ 1 1 1 1 1 1 1 _ _ 
    └───────────┬──────────

    ┌──────────────────────
 48 │ _ 1 1 1 1 1 1 1 _ _ 
    └─────────┬────────────

    ┌──────────────────────
 49 │ _ 1 1 1 1 1 1 1 _ _ 
    └───────┬──────────────

    ┌──────────────────────
 50 │ _ 1 1 1 1 1 1 1 _ _ 
    └─────┬────────────────

    ┌──────────────────────
 51 │ _ 1 1 1 1 1 1 1 _ _ 
    └───┬──────────────────

    ┌──────────────────────
 52 │ _ 1 1 1 1 1 1 1 _ _ 
    └─┬────────────────────

    ┌──────────────────────
 53 │ _ 1 1 1 1 1 1 1 _ _ 
    └───┬──────────────────

     TERMINAL
6
```
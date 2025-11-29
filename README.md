# Fermat's Little Theorem

`a ^ p = a` in `ZMod p`, proved by induction using the freshman's dream.

Formalised in Lean 4 with Mathlib. No `sorry`.

## Proof outline

1. `ZMod p` has characteristic `p`, so `(x + 1) ^ p = x ^ p + 1`.
2. Induction on `n : ℕ` gives `(n : ZMod p) ^ p = n`.
3. Every `a : ZMod p` is the cast of `a.val`, so `a ^ p = a`.
4. For `a ≠ 0`, cancel one factor of `a` to get `a ^ (p - 1) = 1`.

## Contents

- [`FermatLittle/Basic.lean`](FermatLittle/Basic.lean): the main development
- [`FermatLittle/Examples.lean`](FermatLittle/Examples.lean): small worked examples

Declarations:

- `FermatLittle.pow_card_natCast`
- `FermatLittle.pow_card`
- `FermatLittle.pow_card_sub_one`
- `FermatLittle.int_pow_modEq`

## Build

```
lake exe cache get
lake build
```

Toolchain: `leanprover/lean4:v4.33.0-rc1`.

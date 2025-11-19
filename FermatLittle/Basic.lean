import Mathlib

/-!
# Fermat's little theorem

In `ZMod p`, `(x + 1) ^ p = x ^ p + 1` (the freshman's dream).
Induction on `n` gives `n ^ p = n`, and cancelling `a ≠ 0` gives `a ^ (p - 1) = 1`.
-/

namespace FermatLittle

variable {p : ℕ} [hp : Fact p.Prime]

/-- Every natural number cast into `ZMod p` is fixed by `x ↦ x ^ p`. -/
lemma pow_card_natCast (n : ℕ) : ((n : ZMod p)) ^ p = n := by
  induction n with
  | zero => simp [zero_pow hp.out.ne_zero]
  | succ k ih => push_cast; rw [add_pow_char, ih, one_pow]

/-- **Fermat's little theorem**, `a ^ p = a` form. -/
theorem pow_card (a : ZMod p) : a ^ p = a := by
  sorry

end FermatLittle

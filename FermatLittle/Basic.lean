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
  sorry

end FermatLittle

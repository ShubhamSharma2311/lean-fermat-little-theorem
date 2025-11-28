import FermatLittle.Basic

namespace FermatLittle

example : (3 : ZMod 7) ^ 6 = 1 := by decide

example : (2 : ℤ) ^ 13 ≡ 2 [ZMOD 13] := by
  haveI : Fact (Nat.Prime 13) := ⟨by norm_num⟩
  exact int_pow_modEq (p := 13) 2

end FermatLittle

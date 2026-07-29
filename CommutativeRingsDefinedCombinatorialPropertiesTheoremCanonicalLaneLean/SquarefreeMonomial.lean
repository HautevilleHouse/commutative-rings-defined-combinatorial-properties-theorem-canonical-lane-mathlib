import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesTheoremCanonicalLaneLean

structure SquarefreeMonomial (R : Type u) [CommSemiring R] [DecidableEq R] where
  support : Finset R
  coefficient : R
  squarefreeProperty : ∀ (x : R), x ∈ support → ∄ (y : R), y ∈ support ∧ y ≠ x ∧ x ∣ y

structure MonomialOrder (R : Type u) [CommSemiring R] (M : Set (SquarefreeMonomial R)) where
  relation : SquarefreeMonomial R → SquarefreeMonomial R → Prop
  trans : ∀ (a b c : SquarefreeMonomial R), relation a b → relation b c → relation a c
  antisymm : ∀ (a b : SquarefreeMonomial R), relation a b → relation b a → a = b
  total : ∀ (a b : SquarefreeMonomial R), relation a b ∨ relation b a

end CommutativeRingsDefinedCombinatorialPropertiesTheoremCanonicalLaneLean
end HautevilleHouse

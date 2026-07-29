import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesTheoremCanonicalLaneLean

structure PrimeIdealPackage (R : Type u) [CommRing R] where
  primeIdeal : Ideal R
  primeProperty : Prime ideal
  closureUnderMultiplication : Prop
  nontrivial : Prop

structure PrimeIdealEvidence {R : Type u} [CommRing R] (P : PrimeIdealPackage R) where
  primePropertyClosed : P.primeProperty
  closureUnderMultiplicationClosed : P.closureUnderMultiplication
  nontrivialClosed : P.nontrivial

def PrimeIdealClosed {R : Type u} [CommRing R] (P : PrimeIdealPackage R) : Prop :=
  P.primeProperty ∧ P.closureUnderMultiplication ∧ P.nontrivial

theorem prime_ideal_closed_from_evidence {R : Type u} [CommRing R] (P : PrimeIdealPackage R) (E : PrimeIdealEvidence P) : PrimeIdealClosed P := by
  exact And.intro E.primePropertyClosed (And.intro E.closureUnderMultiplicationClosed E.nontrivialClosed)

end CommutativeRingsDefinedCombinatorialPropertiesTheoremCanonicalLaneLean
end HautevilleHouse

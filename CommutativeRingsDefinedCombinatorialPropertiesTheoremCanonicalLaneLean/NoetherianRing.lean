import canonicalLaneMathlib.PrimeIdeals

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesTheoremCanonicalLaneLean

structure NoetherianRingPackage (R : Type u) [CommRing R] where
  ascendingChainCondition : Prop
  everyIdealFinitelyGenerated : Prop
  accOnIdeals : Prop

structure NoetherianRingEvidence {R : Type u} [CommRing R] (N : NoetherianRingPackage R) where
  ascendingChainConditionClosed : N.ascendingChainCondition
  everyIdealFinitelyGeneratedClosed : N.everyIdealFinitelyGenerated
  accOnIdealsClosed : N.accOnIdeals

def NoetherianRingClosed {R : Type u} [CommRing R] (N : NoetherianRingPackage R) : Prop :=
  N.ascendingChainCondition ∧ N.everyIdealFinitelyGenerated ∧ N.accOnIdeals

theorem noetherian_ring_closed_from_evidence {R : Type u} [CommRing R] (N : NoetherianRingPackage R) (E : NoetherianRingEvidence N) : NoetherianRingClosed N := by
  exact And.intro E.ascendingChainConditionClosed (And.intro E.everyIdealFinitelyGeneratedClosed E.accOnIdealsClosed)

end CommutativeRingsDefinedCombinatorialPropertiesTheoremCanonicalLaneLean
end HautevilleHouse

import canonicalLaneMathlib.PrimeIdeals

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesTheoremCanonicalLaneLean

structure KrullDimensionPackage (R : Type u) [CommRing R] where
  supOfChainLengths : ℕ
  chainCondition : Prop
  dimensionFinite : Prop

structure KrullDimensionEvidence {R : Type u} [CommRing R] (K : KrullDimensionPackage R) where
  chainConditionClosed : K.chainCondition
  dimensionFiniteClosed : K.dimensionFinite

def KrullDimensionClosed {R : Type u} [CommRing R] (K : KrullDimensionPackage R) : Prop :=
  K.chainCondition ∧ K.dimensionFinite

theorem krull_dimension_closed_from_evidence {R : Type u} [CommRing R] (K : KrullDimensionPackage R) (E : KrullDimensionEvidence K) : KrullDimensionClosed K := by
  exact And.intro E.chainConditionClosed E.dimensionFiniteClosed

end CommutativeRingsDefinedCombinatorialPropertiesTheoremCanonicalLaneLean
end HautevilleHouse

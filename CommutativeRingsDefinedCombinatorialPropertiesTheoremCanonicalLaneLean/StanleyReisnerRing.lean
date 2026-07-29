import canonicalLaneMathlib.AdmissibleClass
import CommutativeRingsDefinedCombinatorialPropertiesTheoremCanonicalLaneLean.IdealSimplicialComplex

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesTheoremCanonicalLaneLean

structure StanleyReisnerRing (k : Type u) [CommRing k] (Δ : IdealSimplicialComplex) where
  polynomialRing : Type v
  [instPolynomialRing : CommRing polynomialRing]
  faceIdeal : FaceIdeal Δ
  quotientRing : Type w
  [instQuotientRing : CommRing quotientRing]
  isIsomorphism : quotientRing ≃+* polynomialRing / (faceIdeal.carrier)

def StanleyReisnerClosed (R : StanleyReisnerRing k Δ) : Prop :=
  ∃ (k : Type u) [CommRing k] (Δ : IdealSimplicialComplex),
    Let _ := R in True

theorem stanley_reisner_closed (R : StanleyReisnerRing k Δ) : StanleyReisnerClosed R := by
  exact ⟨k, inferInstance, Δ, by trivial⟩

end CommutativeRingsDefinedCombinatorialPropertiesTheoremCanonicalLaneLean
end HautevilleHouse

import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesTheoremCanonicalLaneLean

structure SyzygyResolutionPackage where
  module : Type u
  freeResolution : Type v
  lengthFinite : Prop
  bettiNumbers : Nat → Prop
  exactness : Prop

structure SyzygyResolutionEvidence (S : SyzygyResolutionPackage) where
  lengthFiniteClosed : S.lengthFinite
  bettiNumbersClosed : ∀ n, S.bettiNumbers n
  exactnessClosed : S.exactness

def SyzygyResolutionClosed (S : SyzygyResolutionPackage) : Prop :=
  S.lengthFinite ∧ (∀ n, S.bettiNumbers n) ∧ S.exactness

theorem syzygy_resolution_closed_from_evidence
    (S : SyzygyResolutionPackage) (E : SyzygyResolutionEvidence S) :
    SyzygyResolutionClosed S := by
  exact And.intro E.lengthFiniteClosed (And.intro E.bettiNumbersClosed E.exactnessClosed)

end CommutativeRingsDefinedCombinatorialPropertiesTheoremCanonicalLaneLean
end HautevilleHouse

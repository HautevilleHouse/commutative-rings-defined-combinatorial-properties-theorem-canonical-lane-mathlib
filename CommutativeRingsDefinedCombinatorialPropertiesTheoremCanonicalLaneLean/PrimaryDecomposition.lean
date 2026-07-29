import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesTheoremCanonicalLaneLean

structure PrimaryDecompositionPackage where
  ring : Type u
  ideal : Type v
  primaryComponents : List (Type v)
  decompositionUnique : Prop
  associatedPrimes : Prop

structure PrimaryDecompositionEvidence (P : PrimaryDecompositionPackage) where
  decompositionUniqueClosed : P.decompositionUnique
  associatedPrimesClosed : P.associatedPrimes

def PrimaryDecompositionClosed (P : PrimaryDecompositionPackage) : Prop :=
  P.decompositionUnique ∧ P.associatedPrimes

theorem primary_decomposition_closed_from_evidence
    (P : PrimaryDecompositionPackage) (E : PrimaryDecompositionEvidence P) :
    PrimaryDecompositionClosed P := by
  exact And.intro E.decompositionUniqueClosed E.associatedPrimesClosed

end CommutativeRingsDefinedCombinatorialPropertiesTheoremCanonicalLaneLean
end HautevilleHouse

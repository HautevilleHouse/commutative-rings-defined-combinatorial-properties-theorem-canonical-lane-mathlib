import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesTheoremCanonicalLaneLean

structure HomologicalAlgebraPackage where
  chainComplexes : Type u
  homology : chainComplexes → Type v
  exactSequences : Prop
  derivedFunctors : Prop
  spectralSequences : Prop
  homologicalProperties : Prop

structure HomologicalAlgebraEvidence (H : HomologicalAlgebraPackage) where
  exactSequencesClosed : H.exactSequences
  derivedFunctorsClosed : H.derivedFunctors
  spectralSequencesClosed : H.spectralSequences
  homologicalPropertiesClosed : H.homologicalProperties

def HomologicalAlgebraClosed (H : HomologicalAlgebraPackage) : Prop :=
  H.exactSequences ∧ H.derivedFunctors ∧ H.spectralSequences ∧ H.homologicalProperties

theorem homological_algebra_closed_from_evidence
    (H : HomologicalAlgebraPackage) (E : HomologicalAlgebraEvidence H) :
    HomologicalAlgebraClosed H := by
  exact And.intro E.exactSequencesClosed
    (And.intro E.derivedFunctorsClosed
      (And.intro E.spectralSequencesClosed E.homologicalPropertiesClosed))

end CommutativeRingsDefinedCombinatorialPropertiesTheoremCanonicalLaneLean
end HautevilleHouse
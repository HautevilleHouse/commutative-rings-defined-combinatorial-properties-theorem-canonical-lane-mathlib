import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CommutativeRingsDefinedCombinatorialPropertiesTheoremCanonicalLaneLean.CombinatorialProperties

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesTheoremCanonicalLaneLean

structure IdealStructurePackage (P : CombinatorialPropertiesPackage) where
  ideals : Set (Set P.ring)
  idealSum : Set P.ring → Set P.ring → Set P.ring
  idealProduct : Set P.ring → Set P.ring → Set P.ring
  primeIdeals : Set (Set P.ring)
  maximalIdeals : Set (Set P.ring)
  idealClosureProperties : Prop
  primeMaximalRelations : Prop

structure IdealStructureEvidence {P : CombinatorialPropertiesPackage}
    (I : IdealStructurePackage P) where
  idealClosurePropertiesClosed : I.idealClosureProperties
  primeMaximalRelationsClosed : I.primeMaximalRelations

def IdealStructureClosed {P : CombinatorialPropertiesPackage}
    (I : IdealStructurePackage P) : Prop :=
  I.idealClosureProperties ∧ I.primeMaximalRelations

theorem ideal_structure_closed_from_evidence
    {P : CombinatorialPropertiesPackage} (I : IdealStructurePackage P)
    (E : IdealStructureEvidence I) : IdealStructureClosed I := by
  exact And.intro E.idealClosurePropertiesClosed E.primeMaximalRelationsClosed

end CommutativeRingsDefinedCombinatorialPropertiesTheoremCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CommutativeRingsDefinedCombinatorialPropertiesTheoremCanonicalLaneLean.IdealStructure

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesTheoremCanonicalLaneLean

structure DimensionTheoryPackage {P : CombinatorialPropertiesPackage}
    (I : IdealStructurePackage P) where
  krullDimension : ℕ
  height : Set P.ring → ℕ
  depth : Set P.ring → ℕ
  dimensionDefined : Prop
  heightDepthRelations : Prop

structure DimensionTheoryEvidence {P : CombinatorialPropertiesPackage}
    {I : IdealStructurePackage P} (D : DimensionTheoryPackage I) where
  dimensionDefinedClosed : D.dimensionDefined
  heightDepthRelationsClosed : D.heightDepthRelations

def DimensionTheoryClosed {P : CombinatorialPropertiesPackage}
    {I : IdealStructurePackage P} (D : DimensionTheoryPackage I) : Prop :=
  D.dimensionDefined ∧ D.heightDepthRelations

theorem dimension_theory_closed_from_evidence
    {P : CombinatorialPropertiesPackage} {I : IdealStructurePackage P}
    (D : DimensionTheoryPackage I) (E : DimensionTheoryEvidence D) :
    DimensionTheoryClosed D := by
  exact And.intro E.dimensionDefinedClosed E.heightDepthRelationsClosed

end CommutativeRingsDefinedCombinatorialPropertiesTheoremCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesTheoremCanonicalLaneLean

structure CombinatorialPropertiesPackage where
  ring : Type u
  addition : ring → ring → ring
  multiplication : ring → ring → ring
  zero : ring
  one : ring
  additiveGroup : Prop
  multiplicativeMonoid : Prop
  distributive : Prop
  combinatorialCondition : Prop

structure CombinatorialPropertiesEvidence (P : CombinatorialPropertiesPackage) where
  additiveGroupClosed : P.additiveGroup
  multiplicativeMonoidClosed : P.multiplicativeMonoid
  distributiveClosed : P.distributive
  combinatorialConditionClosed : P.combinatorialCondition

def CombinatorialPropertiesClosed (P : CombinatorialPropertiesPackage) : Prop :=
  P.additiveGroup ∧ P.multiplicativeMonoid ∧ P.distributive ∧ P.combinatorialCondition

theorem combinatorial_properties_closed_from_evidence
    (P : CombinatorialPropertiesPackage) (E : CombinatorialPropertiesEvidence P) :
    CombinatorialPropertiesClosed P := by
  exact And.intro E.additiveGroupClosed
    (And.intro E.multiplicativeMonoidClosed
      (And.intro E.distributiveClosed E.combinatorialConditionClosed))

end CommutativeRingsDefinedCombinatorialPropertiesTheoremCanonicalLaneLean
end HautevilleHouse
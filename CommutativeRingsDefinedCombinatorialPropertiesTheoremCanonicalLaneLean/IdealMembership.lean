import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesTheoremCanonicalLaneLean

structure IdealMembershipPackage where
  polynomialRing : Type u
  idealGenerators : List (polynomialRing)
  membershipCriterion : Prop
  algorithmTermination : Prop

structure IdealMembershipEvidence (I : IdealMembershipPackage) where
  membershipCriterionClosed : I.membershipCriterion
  algorithmTerminationClosed : I.algorithmTermination

def IdealMembershipClosed (I : IdealMembershipPackage) : Prop :=
  I.membershipCriterion ∧ I.algorithmTermination

theorem ideal_membership_closed_from_evidence
    (I : IdealMembershipPackage) (E : IdealMembershipEvidence I) :
    IdealMembershipClosed I := by
  exact And.intro E.membershipCriterionClosed E.algorithmTerminationClosed

end CommutativeRingsDefinedCombinatorialPropertiesTheoremCanonicalLaneLean
end HautevilleHouse

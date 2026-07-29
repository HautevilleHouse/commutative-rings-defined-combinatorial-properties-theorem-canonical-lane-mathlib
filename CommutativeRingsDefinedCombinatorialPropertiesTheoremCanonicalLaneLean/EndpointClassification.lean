import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CommutativeRingsDefinedCombinatorialPropertiesTheoremCanonicalLaneLean.HomologicalAlgebra

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesTheoremCanonicalLaneLean

structure EndpointClassificationPackage where
  combinatorialProperty : Prop
  ringClassified : Prop
  propertyHolds : Prop
  classificationComplete : Prop

structure EndpointClassificationEvidence (E : EndpointClassificationPackage) where
  combinatorialPropertyClosed : E.combinatorialProperty
  ringClassifiedClosed : E.ringClassified
  propertyHoldsClosed : E.propertyHolds
  classificationCompleteClosed : E.classificationComplete

def EndpointClassificationClosed (E : EndpointClassificationPackage) : Prop :=
  E.combinatorialProperty ∧ E.ringClassified ∧ E.propertyHolds ∧ E.classificationComplete

theorem endpoint_classification_closed_from_evidence
    (E : EndpointClassificationPackage) (Ev : EndpointClassificationEvidence E) :
    EndpointClassificationClosed E := by
  exact And.intro Ev.combinatorialPropertyClosed
    (And.intro Ev.ringClassifiedClosed
      (And.intro Ev.propertyHoldsClosed Ev.classificationCompleteClosed))

end CommutativeRingsDefinedCombinatorialPropertiesTheoremCanonicalLaneLean
end HautevilleHouse
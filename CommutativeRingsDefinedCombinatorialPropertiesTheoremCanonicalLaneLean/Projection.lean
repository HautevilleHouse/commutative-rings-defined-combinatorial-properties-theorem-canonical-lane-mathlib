import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesTheoremCanonicalLaneLean

open CanonicalLaneMathlib

structure EndgameState where
  object : AdmittedObject

def project : Projection EndgameState :=
  { toFun := λ x => x,
    idempotent := by intro x; rfl }

theorem projection_idempotent (x : EndgameState) :
    project.toFun (project.toFun x) = project.toFun x := by
  exact project.idempotent x

end CommutativeRingsDefinedCombinatorialPropertiesTheoremCanonicalLaneLean
end HautevilleHouse
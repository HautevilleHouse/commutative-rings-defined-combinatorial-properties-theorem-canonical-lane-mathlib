import canonicalLaneMathlib.NoetherianRing
import canonicalLaneMathlib.KrullDimension

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesTheoremCanonicalLaneLean

structure CohenMacaulayPackage (R : Type u) [CommRing R] [NoetherianRingPackage R] where
  depthEqKrull : Prop
  regularSequenceExists : Prop

structure CohenMacaulayEvidence {R : Type u} [CommRing R] [NoetherianRingPackage R] (C : CohenMacaulayPackage R) where
  depthEqKrullClosed : C.depthEqKrull
  regularSequenceExistsClosed : C.regularSequenceExists

def CohenMacaulayClosed {R : Type u} [CommRing R] [NoetherianRingPackage R] (C : CohenMacaulayPackage R) : Prop :=
  C.depthEqKrull ∧ C.regularSequenceExists

theorem cohen_macaulay_closed_from_evidence {R : Type u} [CommRing R] [NoetherianRingPackage R] (C : CohenMacaulayPackage R) (E : CohenMacaulayEvidence C) : CohenMacaulayClosed C := by
  exact And.intro E.depthEqKrullClosed E.regularSequenceExistsClosed

end CommutativeRingsDefinedCombinatorialPropertiesTheoremCanonicalLaneLean
end HautevilleHouse

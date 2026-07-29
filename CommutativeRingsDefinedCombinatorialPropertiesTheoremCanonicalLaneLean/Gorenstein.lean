import canonicalLaneMathlib.CohenMacaulay

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesTheoremCanonicalLaneLean

structure GorensteinPackage (R : Type u) [CommRing R] [CohenMacaulayPackage R] where
  canonicalModuleInjective : Prop
  canonicalModuleIsDualizing : Prop
  injectiveDimensionFinite : Prop

structure GorensteinEvidence {R : Type u} [CommRing R] [CohenMacaulayPackage R] (G : GorensteinPackage R) where
  canonicalModuleInjectiveClosed : G.canonicalModuleInjective
  canonicalModuleIsDualizingClosed : G.canonicalModuleIsDualizing
  injectiveDimensionFiniteClosed : G.injectiveDimensionFinite

def GorensteinClosed {R : Type u} [CommRing R] [CohenMacaulayPackage R] (G : GorensteinPackage R) : Prop :=
  G.canonicalModuleInjective ∧ G.canonicalModuleIsDualizing ∧ G.injectiveDimensionFinite

theorem gorenstein_closed_from_evidence {R : Type u} [CommRing R] [CohenMacaulayPackage R] (G : GorensteinPackage R) (E : GorensteinEvidence G) : GorensteinClosed G := by
  exact And.intro E.canonicalModuleInjectiveClosed (And.intro E.canonicalModuleIsDualizingClosed E.injectiveDimensionFiniteClosed)

end CommutativeRingsDefinedCombinatorialPropertiesTheoremCanonicalLaneLean
end HautevilleHouse

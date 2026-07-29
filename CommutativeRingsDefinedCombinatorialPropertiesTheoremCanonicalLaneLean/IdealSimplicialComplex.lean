import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeRingsDefinedCombinatorialPropertiesTheoremCanonicalLaneLean

structure IdealSimplicialComplex where
  vertices : Type u
  faces : Set (Set vertices)
  closedUnderSubsets : ∀ (F : Set vertices), F ∈ faces → ∀ (G : Set vertices), G ⊆ F → G ∈ faces
  containsEmptySet : Set.empty ∈ faces

structure FaceIdeal (C : IdealSimplicialComplex) where
  carrier : Set (Set C.vertices)
  addClosed : ∀ (A B : Set C.vertices), A ∈ carrier → B ∈ carrier → A ∪ B ∈ carrier
  absorbUnderSubset : ∀ (A : Set C.vertices), A ∈ carrier → ∀ (B : Set C.vertices), B ⊆ A → B ∈ carrier
  containsEmpty : Set.empty ∈ carrier

def ClosedUnderScarf (J : FaceIdeal C) : Prop :=
  ∀ (F G : Set C.vertices), F ∈ J.carrier → G ∈ J.carrier → F ∩ G ∈ J.carrier

end CommutativeRingsDefinedCombinatorialPropertiesTheoremCanonicalLaneLean
end HautevilleHouse

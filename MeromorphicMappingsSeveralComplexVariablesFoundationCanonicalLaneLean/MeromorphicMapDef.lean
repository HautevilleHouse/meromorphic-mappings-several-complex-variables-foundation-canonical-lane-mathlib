import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesFoundationCanonicalLaneLean

structure MeromorphicMapDomain (n : ℕ) where
  carrier : Type
  complexStructure : ComplexStructure carrier
  dimension : carrier ≃ ℂ^n
  isStein : Prop
  dimensionTerm : isStein

structure MeromorphicTarget (m : ℕ) where
  carrier : Type
  complexStructure : ComplexStructure carrier
  dimension : carrier ≃ ℂ^m
  projectiveSpace : Prop
  dimensionTerm : projectiveSpace

structure MeromorphicMapping (n m : ℕ) (U : MeromorphicMapDomain n) (V : MeromorphicTarget m) where
  graph : Set (U.carrier × V.carrier)
  analyticVariety : AnalyticSet (U.carrier × V.carrier) graph
  properProjection : ∀ x : U.carrier, Finite (π₂ '' (graph ∩ ({x} × V.carrier)))
  closureClosed : Prop

structure MeromorphicAdmittedObject (n m : ℕ) where
  source : MeromorphicMapDomain n
  target : MeromorphicTarget m
  mapping : MeromorphicMapping n m source target
  remainderRecorded : Prop

end MeromorphicMappingsSeveralComplexVariablesFoundationCanonicalLaneLean
end HautevilleHouse
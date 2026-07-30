import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MeromorphicMappingsSeveralComplexVariablesFoundationCanonicalLaneLean.MeromorphicMapDef

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesFoundationCanonicalLaneLean

structure AnalyticContinuationBundle (n m : ℕ) (U : MeromorphicMapDomain n) (V : MeromorphicTarget m) where
  germData : U.carrier → GermAt (mappingTarget U V) V.carrier
  gapSheafCoherent : Prop
  uniquenessContinuation : Prop
  continuationDefinedOnLocus : Prop
  continuationDefinedOnLocusTerm : continuationDefinedOnLocus

def ContinuationAdmissible (n m : ℕ) (U : MeromorphicMapDomain n) (V : MeromorphicTarget m) (A : AnalyticContinuationBundle n m U V) : Prop :=
  A.gapSheafCoherent ∧ A.uniquenessContinuation

theorem continuation_admissible_from_evidence (n m : ℕ) (U : MeromorphicMapDomain n) (V : MeromorphicTarget m) (A : AnalyticContinuationBundle n m U V) (hcoh : A.gapSheafCoherent) (huniq : A.uniquenessContinuation) : ContinuationAdmissible n m U V A := by
  exact And.intro hcoh huniq

end MeromorphicMappingsSeveralComplexVariablesFoundationCanonicalLaneLean
end HautevilleHouse
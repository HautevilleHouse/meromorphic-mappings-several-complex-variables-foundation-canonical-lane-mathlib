import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MeromorphicMappingsSeveralComplexVariablesFoundationCanonicalLaneLean.MeromorphicMapDef

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesFoundationCanonicalLaneLean

structure GrauertRemmertPackage (n m : ℕ) (U : MeromorphicMapDomain n) (V : MeromorphicTarget m) (f : MeromorphicMapping n m U V) where
  directImageSheaf : Prop
  coherenceGrauertRemmert : Prop
  liftingCriteria : Prop
  structureSheafCoherent : Prop
  directImageSheafTerm : directImageSheaf
  coherenceGrauertRemmertTerm : coherenceGrauertRemmert
  liftingCriteriaTerm : liftingCriteria
  structureSheafCoherentTerm : structureSheafCoherent

def GrauertRemmertClosed (n m : ℕ) (U : MeromorphicMapDomain n) (V : MeromorphicTarget m) (f : MeromorphicMapping n m U V) (G : GrauertRemmertPackage n m U V f) : Prop :=
  G.directImageSheaf ∧ G.coherenceGrauertRemmert ∧ G.liftingCriteria ∧ G.structureSheafCoherent

theorem grauert_remmert_closed_from_evidence (n m : ℕ) (U : MeromorphicMapDomain n) (V : MeromorphicTarget m) (f : MeromorphicMapping n m U V) (G : GrauertRemmertPackage n m U V f) (hdir : G.directImageSheaf) (hcoh : G.coherenceGrauertRemmert) (hlift : G.liftingCriteria) (hstr : G.structureSheafCoherent) : GrauertRemmertClosed n m U V f G := by
  exact And.intro hdir (And.intro hcoh (And.intro hlift hstr))

end MeromorphicMappingsSeveralComplexVariablesFoundationCanonicalLaneLean
end HautevilleHouse
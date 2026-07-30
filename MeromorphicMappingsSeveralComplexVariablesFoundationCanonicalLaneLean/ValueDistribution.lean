import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesFoundationCanonicalLaneLean

structure ValueDistributionPackage where
  mapping : Type u
  target : Type v
  growthFunction : Prop
  ramificationTerm : Prop
  defectRelation : Prop
  nevanlinnaFirstMainTheorem : Prop

structure ValueDistributionEvidence (V : ValueDistributionPackage) where
  growthFunctionClosed : V.growthFunction
  ramificationTermClosed : V.ramificationTerm
  defectRelationClosed : V.defectRelation
  nevanlinnaFirstMainTheoremClosed : V.nevanlinnaFirstMainTheorem

def ValueDistributionClosed (V : ValueDistributionPackage) : Prop :=
  V.growthFunction ∧ V.ramificationTerm ∧ V.defectRelation ∧ V.nevanlinnaFirstMainTheorem

theorem value_distribution_closed_from_evidence (V : ValueDistributionPackage)
    (E : ValueDistributionEvidence V) : ValueDistributionClosed V := by
  exact And.intro E.growthFunctionClosed
    (And.intro E.ramificationTermClosed
      (And.intro E.defectRelationClosed E.nevanlinnaFirstMainTheoremClosed))

end MeromorphicMappingsSeveralComplexVariablesFoundationCanonicalLaneLean
end HautevilleHouse

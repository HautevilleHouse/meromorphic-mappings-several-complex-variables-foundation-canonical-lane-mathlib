import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesFoundationCanonicalLaneLean

structure CauchyTheoryPackage where
  domain : Type u
  holomorphicFunctions : Type v
  cauchyIntegralFormula : Prop
  cauchyEstimates : Prop
  powerSeriesExpansion : Prop

structure CauchyTheoryEvidence (C : CauchyTheoryPackage) where
  cauchyIntegralFormulaClosed : C.cauchyIntegralFormula
  cauchyEstimatesClosed : C.cauchyEstimates
  powerSeriesExpansionClosed : C.powerSeriesExpansion

def CauchyTheoryClosed (C : CauchyTheoryPackage) : Prop :=
  C.cauchyIntegralFormula ∧ C.cauchyEstimates ∧ C.powerSeriesExpansion

theorem cauchy_theory_closed_from_evidence (C : CauchyTheoryPackage) (E : CauchyTheoryEvidence C) : CauchyTheoryClosed C := by
  exact And.intro E.cauchyIntegralFormulaClosed (And.intro E.cauchyEstimatesClosed E.powerSeriesExpansionClosed)

end MeromorphicMappingsSeveralComplexVariablesFoundationCanonicalLaneLean
end HautevilleHouse
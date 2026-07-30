import canonicalLaneMathlib.AdmissibleClass

/-!
# Cauchy Integral Package
-/

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesFoundationCanonicalLaneLean

structure CauchyIntegralPackage where
  domain : Type u
  domainOpen : Prop
  cauchyFormula : Prop
  holomorphicImpliesAnalytic : Prop
  uniformConvergenceCompact : Prop

structure CauchyIntegralEvidence (C : CauchyIntegralPackage) where
  cauchyFormulaClosed : C.cauchyFormula
  holomorphicImpliesAnalyticClosed : C.holomorphicImpliesAnalytic
  uniformConvergenceCompactClosed : C.uniformConvergenceCompact

def CauchyIntegralClosed (C : CauchyIntegralPackage) : Prop :=
  C.cauchyFormula ∧ C.holomorphicImpliesAnalytic ∧ C.uniformConvergenceCompact

theorem cauchy_integral_closed_from_evidence (C : CauchyIntegralPackage) (E : CauchyIntegralEvidence C) :
    CauchyIntegralClosed C := by
  exact And.intro E.cauchyFormulaClosed (And.intro E.holomorphicImpliesAnalyticClosed E.uniformConvergenceCompactClosed)

end MeromorphicMappingsSeveralComplexVariablesFoundationCanonicalLaneLean
end HautevilleHouse
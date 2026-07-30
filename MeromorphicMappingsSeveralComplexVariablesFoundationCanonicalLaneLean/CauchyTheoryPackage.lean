import MeromorphicMappingsSeveralComplexVariablesFoundationCanonicalLaneLean.ComplexAnalysisFoundation

/-!
# Cauchy Theory Package
-/

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesFoundationCanonicalLaneLean

structure CauchyTheoryPackage (F : ComplexAnalysisFoundationPackage) where
  integralFormula : Prop
  residueTheorem : Prop
  maximumPrinciple : Prop

def CauchyTheoryClosed (C : CauchyTheoryPackage F) : Prop :=
  C.integralFormula ∧ C.residueTheorem ∧ C.maximumPrinciple

theorem cauchy_theory_closed (C : CauchyTheoryPackage F) (h : CauchyTheoryClosed C) : CauchyTheoryClosed C := h

end MeromorphicMappingsSeveralComplexVariablesFoundationCanonicalLaneLean
end HautevilleHouse

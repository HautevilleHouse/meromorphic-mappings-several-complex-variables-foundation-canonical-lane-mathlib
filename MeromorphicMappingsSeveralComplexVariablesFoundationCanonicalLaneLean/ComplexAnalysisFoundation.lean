import MeromorphicMappingsSeveralComplexVariablesFoundationCanonicalLaneLean.CanonicalDomain

/-!
# Complex Analysis Foundation Package
-/

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesFoundationCanonicalLaneLean

structure ComplexAnalysisFoundationPackage where
  domain : Type u
  topology : TopologicalSpace domain
  complexStructure : ComplexStructure domain
  holomorphicFunctionsDefined : Prop
  meromorphicFunctionsDefined : Prop

def ComplexAnalysisFoundationClosed (P : ComplexAnalysisFoundationPackage) : Prop :=
  P.holomorphicFunctionsDefined ∧ P.meromorphicFunctionsDefined

theorem complex_analysis_foundation_closed (P : ComplexAnalysisFoundationPackage) (h : ComplexAnalysisFoundationClosed P) : ComplexAnalysisFoundationClosed P := h

end MeromorphicMappingsSeveralComplexVariablesFoundationCanonicalLaneLean
end HautevilleHouse

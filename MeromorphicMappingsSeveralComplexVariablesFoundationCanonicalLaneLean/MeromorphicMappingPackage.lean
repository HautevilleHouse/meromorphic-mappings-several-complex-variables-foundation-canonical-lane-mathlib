import MeromorphicMappingsSeveralComplexVariablesFoundationCanonicalLaneLean.CauchyTheoryPackage

/-!
# Meromorphic Mapping Package
-/

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesFoundationCanonicalLaneLean

structure MeromorphicMappingPackage (C : CauchyTheoryPackage F) (F : ComplexAnalysisFoundationPackage) where
  mappingDefined : Prop
  polesClassified : Prop
  valueDistributionStarted : Prop

def MeromorphicMappingClosed (M : MeromorphicMappingPackage C F) : Prop :=
  M.mappingDefined ∧ M.polesClassified ∧ M.valueDistributionStarted

theorem meromorphic_mapping_closed (M : MeromorphicMappingPackage C F) (h : MeromorphicMappingClosed M) : MeromorphicMappingClosed M := h

end MeromorphicMappingsSeveralComplexVariablesFoundationCanonicalLaneLean
end HautevilleHouse

import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesFoundationCanonicalLaneLean

structure RemmertProperMappingPackage where
  source : Type u
  target : Type v
  properHolomorphicMapping : Type w
  imageAnalyticity : Prop
  fiberDimensionCondition : Prop

structure RemmertProperMappingEvidence (R : RemmertProperMappingPackage) where
  imageAnalyticityClosed : R.imageAnalyticity
  fiberDimensionConditionClosed : R.fiberDimensionCondition

def RemmertProperMappingClosed (R : RemmertProperMappingPackage) : Prop :=
  R.imageAnalyticity ∧ R.fiberDimensionCondition

theorem remmert_proper_mapping_closed_from_evidence (R : RemmertProperMappingPackage)
    (E : RemmertProperMappingEvidence R) : RemmertProperMappingClosed R := by
  exact And.intro E.imageAnalyticityClosed E.fiberDimensionConditionClosed

end MeromorphicMappingsSeveralComplexVariablesFoundationCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesFoundationCanonicalLaneLean

structure CauchyRiemannFormsPackage where
  differentialForm : Type u
  integrabilityCondition : Prop
  residueComputation : Prop
  meromorphicExtensionCondition : Prop
  leviCondition : Prop

structure CauchyRiemannFormsEvidence (C : CauchyRiemannFormsPackage) where
  integrabilityConditionClosed : C.integrabilityCondition
  residueComputationClosed : C.residueComputation
  meromorphicExtensionConditionClosed : C.meromorphicExtensionCondition
  leviConditionClosed : C.leviCondition

def CauchyRiemannFormsClosed (C : CauchyRiemannFormsPackage) : Prop :=
  C.integrabilityCondition ∧ C.residueComputation ∧
  C.meromorphicExtensionCondition ∧ C.leviCondition

theorem cauchy_riemann_forms_closed_from_evidence (C : CauchyRiemannFormsPackage)
    (E : CauchyRiemannFormsEvidence C) : CauchyRiemannFormsClosed C := by
  exact And.intro E.integrabilityConditionClosed
    (And.intro E.residueComputationClosed
      (And.intro E.meromorphicExtensionConditionClosed E.leviConditionClosed))

end MeromorphicMappingsSeveralComplexVariablesFoundationCanonicalLaneLean
end HautevilleHouse
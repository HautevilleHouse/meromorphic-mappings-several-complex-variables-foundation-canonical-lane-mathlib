import canonicalLaneMathlib.AdmissibleClass

/-!
# Riemann Mapping Package
-/

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesFoundationCanonicalLaneLean

structure RiemannMappingPackage where
  simplyConnectedDomain : Prop
  conformalEquivalenceExists : Prop
  automorphismGroup : Prop
  boundaryRegularity : Prop

structure RiemannMappingEvidence (R : RiemannMappingPackage) where
  simplyConnectedDomainClosed : R.simplyConnectedDomain
  conformalEquivalenceExistsClosed : R.conformalEquivalenceExists
  automorphismGroupClosed : R.automorphismGroup
  boundaryRegularityClosed : R.boundaryRegularity

def RiemannMappingClosed (R : RiemannMappingPackage) : Prop :=
  R.simplyConnectedDomain ∧ R.conformalEquivalenceExists ∧ R.automorphismGroup ∧ R.boundaryRegularity

theorem riemann_mapping_closed_from_evidence (R : RiemannMappingPackage) (E : RiemannMappingEvidence R) :
    RiemannMappingClosed R := by
  exact And.intro E.simplyConnectedDomainClosed
    (And.intro E.conformalEquivalenceExistsClosed
      (And.intro E.automorphismGroupClosed E.boundaryRegularityClosed))

end MeromorphicMappingsSeveralComplexVariablesFoundationCanonicalLaneLean
end HautevilleHouse
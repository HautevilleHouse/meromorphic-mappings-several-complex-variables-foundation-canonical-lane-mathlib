import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesFoundationCanonicalLaneLean

structure MeromorphicFunction where
  domain : Type u
  codomain : Type v
  analyticSet : Set (domain × codomain)
  projectionDominant : Prop
  irreducibility : Prop

def MeromorphicMappingsWitnessClosed (O : MeromorphicFunction) : Prop :=
  O.projectionDominant ∧ O.irreducibility

structure MeromorphicMappingsAdmittedObject where
  function : MeromorphicFunction
  closureCondition : Prop
  conclusion : closureCondition

end MeromorphicMappingsSeveralComplexVariablesFoundationCanonicalLaneLean
end HautevilleHouse
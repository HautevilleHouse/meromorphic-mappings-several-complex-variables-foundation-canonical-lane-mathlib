import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesFoundationCanonicalLaneLean

structure MeromorphicAdmittedObject where
  domain : Type
  dimension : Nat
  meromorphicFunction : Type
  valueDistributionClosed : Prop
  conclusion : valueDistributionClosed

def MeromorphicWitnessClosed (O : MeromorphicAdmittedObject) : Prop :=
  O.valueDistributionClosed

end MeromorphicMappingsSeveralComplexVariablesFoundationCanonicalLaneLean
end HautevilleHouse

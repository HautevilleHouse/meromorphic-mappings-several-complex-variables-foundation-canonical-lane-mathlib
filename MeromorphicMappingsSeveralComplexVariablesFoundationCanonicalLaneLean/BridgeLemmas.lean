import MeromorphicMappingsSeveralComplexVariablesFoundationCanonicalLaneLean.CanonicalDomain

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MeromorphicWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MeromorphicMappingsSeveralComplexVariablesFoundationCanonicalLaneLean
end HautevilleHouse

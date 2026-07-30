import MeromorphicMappingsSeveralComplexVariablesFoundationCanonicalLaneLean.CanonicalDomain

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def meromorphicProjection : Projection MeromorphicEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem meromorphic_projection_idempotent (x : MeromorphicEndgameState) :
    meromorphicProjection.toFun (meromorphicProjection.toFun x) = meromorphicProjection.toFun x := by
  exact meromorphicProjection.idempotent x

end MeromorphicMappingsSeveralComplexVariablesFoundationCanonicalLaneLean
end HautevilleHouse

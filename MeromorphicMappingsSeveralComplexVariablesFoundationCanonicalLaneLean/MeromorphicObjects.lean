import MeromorphicMappingsSeveralComplexVariablesFoundationCanonicalLaneLean.TheoremStatement
import canonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MeromorphicSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  complexStructure : ComplexStructure carrier

structure MeromorphicAdmittedObject where
  space : MeromorphicSpace
  severalVariables : Prop
  meromorphicMappings : Prop
  valueDistribution : Prop
  conclusion : valueDistribution

structure MeromorphicEndgameState where
  object : MeromorphicAdmittedObject

def MeromorphicWitnessClosed (O : MeromorphicAdmittedObject) : Prop :=
  O.valueDistribution

end MeromorphicMappingsSeveralComplexVariablesFoundationCanonicalLaneLean
end HautevilleHouse

import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesFoundationCanonicalLaneLean

structure OkaCoherencePackage where
  structureSheaf : Type u
  coherentSubsheaf : Type v
  coherenceCondition : Prop
  finitenessCondition : Prop
  syzygyCondition : Prop

structure OkaCoherenceEvidence (O : OkaCoherencePackage) where
  coherenceConditionClosed : O.coherenceCondition
  finitenessConditionClosed : O.finitenessCondition
  syzygyConditionClosed : O.syzygyCondition

def OkaCoherenceClosed (O : OkaCoherencePackage) : Prop :=
  O.coherenceCondition ∧ O.finitenessCondition ∧ O.syzygyCondition

theorem oka_coherence_closed_from_evidence (O : OkaCoherencePackage)
    (E : OkaCoherenceEvidence O) : OkaCoherenceClosed O := by
  exact And.intro E.coherenceConditionClosed
    (And.intro E.finitenessConditionClosed E.syzygyConditionClosed)

end MeromorphicMappingsSeveralComplexVariablesFoundationCanonicalLaneLean
end HautevilleHouse
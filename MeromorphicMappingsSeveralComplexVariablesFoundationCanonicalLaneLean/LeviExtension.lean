import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesFoundationCanonicalLaneLean

structure LeviExtensionPackage where
  domain : Type u
  analyticSet : Prop
  codimensionAtLeastTwo : Prop
  meromorphicFunctionOnComplement : Prop
  extendabilityAcross : Prop

structure LeviExtensionEvidence (L : LeviExtensionPackage) where
  analyticSetClosed : L.analyticSet
  codimensionAtLeastTwoClosed : L.codimensionAtLeastTwo
  meromorphicFunctionOnComplementClosed : L.meromorphicFunctionOnComplement
  extendabilityAcrossClosed : L.extendabilityAcross

def LeviExtensionClosed (L : LeviExtensionPackage) : Prop :=
  L.analyticSet ∧ L.codimensionAtLeastTwo ∧ L.meromorphicFunctionOnComplement ∧ L.extendabilityAcross

theorem levi_extension_closed_from_evidence (L : LeviExtensionPackage)
    (E : LeviExtensionEvidence L) : LeviExtensionClosed L := by
  exact And.intro E.analyticSetClosed
    (And.intro E.codimensionAtLeastTwoClosed
      (And.intro E.meromorphicFunctionOnComplementClosed E.extendabilityAcrossClosed))

end MeromorphicMappingsSeveralComplexVariablesFoundationCanonicalLaneLean
end HautevilleHouse

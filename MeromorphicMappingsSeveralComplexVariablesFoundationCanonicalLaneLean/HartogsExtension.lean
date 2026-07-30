import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesFoundationCanonicalLaneLean

structure HartogsExtensionPackage where
  domain : Type u
  codomain : Type v
  holomorphicFunction : Type w
  extensionCondition : Prop
  meromorphicExtension : Prop
  uniqueness : Prop

structure HartogsExtensionEvidence (H : HartogsExtensionPackage) where
  extensionConditionClosed : H.extensionCondition
  meromorphicExtensionClosed : H.meromorphicExtension
  uniquenessClosed : H.uniqueness

def HartogsExtensionClosed (H : HartogsExtensionPackage) : Prop :=
  H.extensionCondition ∧ H.meromorphicExtension ∧ H.uniqueness

theorem hartogs_extension_closed_from_evidence (H : HartogsExtensionPackage)
    (E : HartogsExtensionEvidence H) : HartogsExtensionClosed H := by
  exact And.intro E.extensionConditionClosed
    (And.intro E.meromorphicExtensionClosed E.uniquenessClosed)

end MeromorphicMappingsSeveralComplexVariablesFoundationCanonicalLaneLean
end HautevilleHouse
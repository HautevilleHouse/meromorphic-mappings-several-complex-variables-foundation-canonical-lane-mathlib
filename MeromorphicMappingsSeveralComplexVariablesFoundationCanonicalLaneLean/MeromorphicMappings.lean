import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesFoundationCanonicalLaneLean

structure MeromorphicMapPackage where
  sourceComplexManifold : Type u
  targetComplexManifold : Type v
  holomorphicOnOpenSet : Prop
  polarSet : Prop
  meromorphicExtension : Prop
  extensionUnique : Prop

structure MeromorphicMapEvidence (M : MeromorphicMapPackage) where
  holomorphicOnOpenSetClosed : M.holomorphicOnOpenSet
  polarSetClosed : M.polarSet
  meromorphicExtensionClosed : M.meromorphicExtension
  extensionUniqueClosed : M.extensionUnique

def MeromorphicMapClosed (M : MeromorphicMapPackage) : Prop :=
  M.holomorphicOnOpenSet ∧ M.polarSet ∧ M.meromorphicExtension ∧ M.extensionUnique

theorem meromorphic_map_closed_from_evidence (M : MeromorphicMapPackage)
    (E : MeromorphicMapEvidence M) : MeromorphicMapClosed M := by
  exact And.intro E.holomorphicOnOpenSetClosed
    (And.intro E.polarSetClosed
      (And.intro E.meromorphicExtensionClosed E.extensionUniqueClosed))

end MeromorphicMappingsSeveralComplexVariablesFoundationCanonicalLaneLean
end HautevilleHouse

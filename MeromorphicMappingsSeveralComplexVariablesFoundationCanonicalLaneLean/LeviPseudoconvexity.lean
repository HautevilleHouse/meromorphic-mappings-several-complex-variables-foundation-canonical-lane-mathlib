import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesFoundationCanonicalLaneLean

structure LeviPseudoconvexityPackage where
  domain : Type u
  boundaryClass : Type v
  leviFormNonnegative : Prop
  plurisubharmonicExhaustion : Prop
  peakingFunction : Prop

structure LeviPseudoconvexityEvidence (L : LeviPseudoconvexityPackage) where
  leviFormNonnegativeClosed : L.leviFormNonnegative
  plurisubharmonicExhaustionClosed : L.plurisubharmonicExhaustion
  peakingFunctionClosed : L.peakingFunction

def LeviPseudoconvexityClosed (L : LeviPseudoconvexityPackage) : Prop :=
  L.leviFormNonnegative ∧ L.plurisubharmonicExhaustion ∧ L.peakingFunction

theorem levi_pseudoconvexity_closed_from_evidence (L : LeviPseudoconvexityPackage)
    (E : LeviPseudoconvexityEvidence L) : LeviPseudoconvexityClosed L := by
  exact And.intro E.leviFormNonnegativeClosed
    (And.intro E.plurisubharmonicExhaustionClosed E.peakingFunctionClosed)

end MeromorphicMappingsSeveralComplexVariablesFoundationCanonicalLaneLean
end HautevilleHouse
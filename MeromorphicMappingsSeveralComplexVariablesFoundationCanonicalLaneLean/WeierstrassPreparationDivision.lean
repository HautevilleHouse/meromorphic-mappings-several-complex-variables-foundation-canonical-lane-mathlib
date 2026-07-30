import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicMappingsSeveralComplexVariablesFoundationCanonicalLaneLean

structure WeierstrassPreparationDivisionPackage where
  functionG : Type u
  weierstrassPolynomial : Type v
  divisionRepresentation : Prop
  preparationTheorem : Prop
  analyticityPreserved : Prop

structure WeierstrassPreparationDivisionEvidence (W : WeierstrassPreparationDivisionPackage) where
  divisionRepresentationClosed : W.divisionRepresentation
  preparationTheoremClosed : W.preparationTheorem
  analyticityPreservedClosed : W.analyticityPreserved

def WeierstrassPreparationDivisionClosed (W : WeierstrassPreparationDivisionPackage) : Prop :=
  W.divisionRepresentation ∧ W.preparationTheorem ∧ W.analyticityPreserved

theorem weierstrass_preparation_division_closed_from_evidence
    (W : WeierstrassPreparationDivisionPackage)
    (E : WeierstrassPreparationDivisionEvidence W) : WeierstrassPreparationDivisionClosed W := by
  exact And.intro E.divisionRepresentationClosed
    (And.intro E.preparationTheoremClosed E.analyticityPreservedClosed)

end MeromorphicMappingsSeveralComplexVariablesFoundationCanonicalLaneLean
end HautevilleHouse
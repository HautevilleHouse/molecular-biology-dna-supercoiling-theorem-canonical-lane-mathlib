import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean.TopologicalConstraint

namespace HautevilleHouse
namespace MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean

structure EnzymeActionPackage {T : TopologicalConstraintPackage} where
  topoisomeraseType : ℕ
  strandPassageEvent : Prop
  linkingNumberChange : ℤ
  supercoilingRelaxation : Prop
  equilibriumDistribution : Prop

structure EnzymeActionEvidence {T : TopologicalConstraintPackage}
    (E : EnzymeActionPackage T) where
  strandPassageEventClosed : E.strandPassageEvent
  linkingNumberChangeClosed : E.linkingNumberChange = 1 ∨ E.linkingNumberChange = -2
  supercoilingRelaxationClosed : E.supercoilingRelaxation
  equilibriumDistributionClosed : E.equilibriumDistribution

def EnzymeActionClosed {T : TopologicalConstraintPackage}
    (E : EnzymeActionPackage T) : Prop :=
  E.strandPassageEvent ∧ (E.linkingNumberChange = 1 ∨ E.linkingNumberChange = -2) ∧
  E.supercoilingRelaxation ∧ E.equilibriumDistribution

theorem enzyme_action_closed_from_evidence
    {T : TopologicalConstraintPackage} (E : EnzymeActionPackage T)
    (Ev : EnzymeActionEvidence E) : EnzymeActionClosed E := by
  exact And.intro Ev.strandPassageEventClosed
    (And.intro Ev.linkingNumberChangeClosed
      (And.intro Ev.supercoilingRelaxationClosed Ev.equilibriumDistributionClosed))

end MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean
end HautevilleHouse

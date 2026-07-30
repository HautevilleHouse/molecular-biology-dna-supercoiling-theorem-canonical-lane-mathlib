import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean.ChiralityClassification

namespace HautevilleHouse
namespace MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean

structure PlectonemeFormationPackage {T : TopologicalConstraintPackage}
    {E : EnzymeActionPackage T} {C : ChiralityClassificationPackage T E} where
  torqueThreshold : ℝ
  braidFormation : Prop
  loopExtrusion : Prop
  plectonemeLength : ℝ → ℝ
  supercoilingStateTransition : Prop

structure PlectonemeFormationEvidence {T : TopologicalConstraintPackage}
    {E : EnzymeActionPackage T} {C : ChiralityClassificationPackage T E}
    (P : PlectonemeFormationPackage T E C) where
  torqueThresholdClosed : P.torqueThreshold > 0
  braidFormationClosed : P.braidFormation
  loopExtrusionClosed : P.loopExtrusion
  supercoilingStateTransitionClosed : P.supercoilingStateTransition

def PlectonemeFormationClosed {T : TopologicalConstraintPackage}
    {E : EnzymeActionPackage T} {C : ChiralityClassificationPackage T E}
    (P : PlectonemeFormationPackage T E C) : Prop :=
  P.torqueThreshold > 0 ∧ P.braidFormation ∧ P.loopExtrusion ∧ P.supercoilingStateTransition

theorem plectoneme_formation_closed_from_evidence
    {T : TopologicalConstraintPackage} {E : EnzymeActionPackage T}
    {C : ChiralityClassificationPackage T E} (P : PlectonemeFormationPackage T E C)
    (Ev : PlectonemeFormationEvidence P) : PlectonemeFormationClosed P := by
  exact And.intro Ev.torqueThresholdClosed
    (And.intro Ev.braidFormationClosed
      (And.intro Ev.loopExtrusionClosed Ev.supercoilingStateTransitionClosed))

end MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean
end HautevilleHouse

import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean

structure ZDNATransitionPackage where
  leftHandedHelixFormation : Prop
  alternatingPurinePyrimidine : Prop
  supercoilInducedTransition : Prop
  sequencePreference : Prop

structure ZDNATransitionEvidence (Z : ZDNATransitionPackage) where
  leftHandedHelixFormationClosed : Z.leftHandedHelixFormation
  alternatingPurinePyrimidineClosed : Z.alternatingPurinePyrimidine
  supercoilInducedTransitionClosed : Z.supercoilInducedTransition
  sequencePreferenceClosed : Z.sequencePreference

def ZDNATransitionClosed (Z : ZDNATransitionPackage) : Prop :=
  Z.leftHandedHelixFormation ∧ Z.alternatingPurinePyrimidine ∧ Z.supercoilInducedTransition ∧ Z.sequencePreference

theorem zdna_transition_closed_from_evidence (Z : ZDNATransitionPackage) (E : ZDNATransitionEvidence Z) : ZDNATransitionClosed Z := by
  exact And.intro E.leftHandedHelixFormationClosed (And.intro E.alternatingPurinePyrimidineClosed (And.intro E.supercoilInducedTransitionClosed E.sequencePreferenceClosed))

end MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean
end HautevilleHouse
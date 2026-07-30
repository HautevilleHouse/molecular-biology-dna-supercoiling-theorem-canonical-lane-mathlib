import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean

structure TopoisomerasePackage where
  strandPassageReaction : Prop
  supercoilRelaxation : Prop
  atpRequirement : Prop
  decatenationActivity : Prop

structure TopoisomeraseEvidence (T : TopoisomerasePackage) where
  strandPassageReactionClosed : T.strandPassageReaction
  supercoilRelaxationClosed : T.supercoilRelaxation
  atpRequirementClosed : T.atpRequirement
  decatenationActivityClosed : T.decatenationActivity

def TopoisomeraseClosed (T : TopoisomerasePackage) : Prop :=
  T.strandPassageReaction ∧ T.supercoilRelaxation ∧ T.atpRequirement ∧ T.decatenationActivity

theorem topoisomerase_closed_from_evidence (T : TopoisomerasePackage) (E : TopoisomeraseEvidence T) : TopoisomeraseClosed T := by
  exact And.intro E.strandPassageReactionClosed (And.intro E.supercoilRelaxationClosed (And.intro E.atpRequirementClosed E.decatenationActivityClosed))

end MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean
end HautevilleHouse
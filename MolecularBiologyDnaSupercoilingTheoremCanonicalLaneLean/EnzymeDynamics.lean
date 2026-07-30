import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean

structure TopoisomeraseActionPackage where
  strandPassage : Prop
  supercoilRelaxation : Prop
  atpDependence : Prop
  transientCleavage : Prop

structure TopoisomeraseActionEvidence (T : TopoisomeraseActionPackage) where
  strandPassageClosed : T.strandPassage
  supercoilRelaxationClosed : T.supercoilRelaxation
  atpDependenceClosed : T.atpDependence
  transientCleavageClosed : T.transientCleavage

def TopoisomeraseActionClosed (T : TopoisomeraseActionPackage) : Prop :=
  T.strandPassage ∧ T.supercoilRelaxation ∧
  T.atpDependence ∧ T.transientCleavage

theorem topoisomerase_action_closed_from_evidence
    (T : TopoisomeraseActionPackage) (E : TopoisomeraseActionEvidence T) :
    TopoisomeraseActionClosed T := by
  exact And.intro E.strandPassageClosed
    (And.intro E.supercoilRelaxationClosed
      (And.intro E.atpDependenceClosed E.transientCleavageClosed))

end MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean
end HautevilleHouse

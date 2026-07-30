import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean

structure TopoisomeraseMechanismPackage where
  strandPassage : Prop
  energyRelaxation : Prop
  linkingNumberChange : ℤ
  mechanismActive : strandPassage ∧ energyRelaxation

structure TopoisomeraseMechanismEvidence (T : TopoisomeraseMechanismPackage) where
  strandPassageClosed : T.strandPassage
  energyRelaxationClosed : T.energyRelaxation
  linkingNumberChangeClosed : T.linkingNumberChange = 0 ∨ T.linkingNumberChange = 1

def TopoisomeraseMechanismClosed (T : TopoisomeraseMechanismPackage) : Prop :=
  T.mechanismActive

theorem topoisomerase_mechanism_closed_from_evidence (T : TopoisomeraseMechanismPackage)
    (E : TopoisomeraseMechanismEvidence T) : TopoisomeraseMechanismClosed T :=
  And.intro E.strandPassageClosed E.energyRelaxationClosed

end MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean
end HautevilleHouse
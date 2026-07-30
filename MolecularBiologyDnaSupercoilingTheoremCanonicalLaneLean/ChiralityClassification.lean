import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean.EnzymeAction

namespace HautevilleHouse
namespace MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean

structure ChiralityClassificationPackage {T : TopologicalConstraintPackage}
    {E : EnzymeActionPackage T} where
  positiveSupercoil : Prop
  negativeSupercoil : Prop
  electrophoreticMobility : ℝ → ℝ
  classificationComplete : Prop

structure ChiralityClassificationEvidence {T : TopologicalConstraintPackage}
    {E : EnzymeActionPackage T} (C : ChiralityClassificationPackage T E) where
  positiveSupercoilClosed : C.positiveSupercoil
  negativeSupercoilClosed : C.negativeSupercoil
  classificationCompleteClosed : C.classificationComplete

def ChiralityClassificationClosed {T : TopologicalConstraintPackage}
    {E : EnzymeActionPackage T} (C : ChiralityClassificationPackage T E) : Prop :=
  C.positiveSupercoil ∧ C.negativeSupercoil ∧ C.classificationComplete

theorem chirality_classification_closed_from_evidence
    {T : TopologicalConstraintPackage} {E : EnzymeActionPackage T}
    (C : ChiralityClassificationPackage T E) (Ev : ChiralityClassificationEvidence C) :
    ChiralityClassificationClosed C := by
  exact And.intro Ev.positiveSupercoilClosed
    (And.intro Ev.negativeSupercoilClosed Ev.classificationCompleteClosed)

end MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean
end HautevilleHouse

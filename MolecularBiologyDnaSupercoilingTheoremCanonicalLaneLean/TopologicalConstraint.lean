import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean.SupercoilingClass

namespace HautevilleHouse
namespace MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean

structure TopologicalConstraintPackage where
  dnaMoleculeType : Type
  closedCircular : Prop
  linkingNumberConservation : Prop
  ladderDensity : ℝ
  constraintSatisfied : Prop

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DnaSupercoilingWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusionTerm

structure TopologicalConstraintEvidence (T : TopologicalConstraintPackage) where
  closedCircularClosed : T.closedCircular
  linkingNumberConservationClosed : T.linkingNumberConservation
  constraintSatisfiedClosed : T.constraintSatisfied

def TopologicalConstraintClosed (T : TopologicalConstraintPackage) : Prop :=
  T.closedCircular ∧ T.linkingNumberConservation ∧ T.constraintSatisfied

theorem topological_constraint_closed_from_evidence
    (T : TopologicalConstraintPackage) (E : TopologicalConstraintEvidence T) :
    TopologicalConstraintClosed T := by
  exact And.intro E.closedCircularClosed (And.intro E.linkingNumberConservationClosed E.constraintSatisfiedClosed)

end MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean
end HautevilleHouse

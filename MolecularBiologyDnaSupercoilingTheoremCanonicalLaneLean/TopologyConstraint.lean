import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean

structure TopologyConstraintPackage where
  linkingNumberDifference : ℤ
  twistDifference : ℝ
  writheDifference : ℝ
  constraintEquation : linkingNumberDifference = round (twistDifference + writheDifference)

structure TopologyConstraintEvidence (T : TopologyConstraintPackage) where
  constraintEquationClosed : T.constraintEquation

def TopologyConstraintClosed (T : TopologyConstraintPackage) : Prop :=
  T.constraintEquation

theorem topology_constraint_closed_from_evidence (T : TopologyConstraintPackage) (E : TopologyConstraintEvidence T) :
    TopologyConstraintClosed T :=
  E.constraintEquationClosed

end MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean

structure TopologicalConstraintsPackage where
  linkingNumberConservation : Prop
  writheTwistDecomposition : Prop
  supercoilingDensity : Prop
  plectonemeFormation : Prop

structure TopologicalConstraintsEvidence (C : TopologicalConstraintsPackage) where
  linkingNumberConservationClosed : C.linkingNumberConservation
  writheTwistDecompositionClosed : C.writheTwistDecomposition
  supercoilingDensityClosed : C.supercoilingDensity
  plectonemeFormationClosed : C.plectonemeFormation

def TopologicalConstraintsClosed (C : TopologicalConstraintsPackage) : Prop :=
  C.linkingNumberConservation ∧ C.writheTwistDecomposition ∧
  C.supercoilingDensity ∧ C.plectonemeFormation

theorem topological_constraints_closed_from_evidence
    (C : TopologicalConstraintsPackage) (E : TopologicalConstraintsEvidence C) :
    TopologicalConstraintsClosed C := by
  exact And.intro E.linkingNumberConservationClosed
    (And.intro E.writheTwistDecompositionClosed
      (And.intro E.supercoilingDensityClosed E.plectonemeFormationClosed))

end MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean
end HautevilleHouse

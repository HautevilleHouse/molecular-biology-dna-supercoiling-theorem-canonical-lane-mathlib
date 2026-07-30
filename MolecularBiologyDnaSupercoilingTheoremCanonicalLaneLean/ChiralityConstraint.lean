import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean

structure ChiralityConstraint where
  supercoilHandedness : Prop
  plectonemeFormation : Prop
  constraintActive : Prop

def ChiralityClosed (C : ChiralityConstraint) : Prop :=
  C.supercoilHandedness ∧ C.plectonemeFormation ∧ C.constraintActive

theorem chirality_closed_from_evidence (C : ChiralityConstraint) : ChiralityClosed C :=
  And.intro C.supercoilHandedness (And.intro C.plectonemeFormation C.constraintActive)

end MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean
end HautevilleHouse
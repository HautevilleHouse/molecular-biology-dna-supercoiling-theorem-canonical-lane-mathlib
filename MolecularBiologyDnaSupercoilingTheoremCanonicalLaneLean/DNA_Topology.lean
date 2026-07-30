import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean

structure DNATopologyPackage where
  doubleHelixStructure : Prop
  linkingNumberDefined : Prop
  writheAndTwistRelation : Prop
  plectonemeFormation : Prop

structure DNATopologyEvidence (T : DNATopologyPackage) where
  doubleHelixStructureClosed : T.doubleHelixStructure
  linkingNumberDefinedClosed : T.linkingNumberDefined
  writheAndTwistRelationClosed : T.writheAndTwistRelation
  plectonemeFormationClosed : T.plectonemeFormation

def DNATopologyClosed (T : DNATopologyPackage) : Prop :=
  T.doubleHelixStructure ∧ T.linkingNumberDefined ∧ T.writheAndTwistRelation ∧ T.plectonemeFormation

theorem dna_topology_closed_from_evidence (T : DNATopologyPackage) (E : DNATopologyEvidence T) : DNATopologyClosed T := by
  exact And.intro E.doubleHelixStructureClosed (And.intro E.linkingNumberDefinedClosed (And.intro E.writheAndTwistRelationClosed E.plectonemeFormationClosed))

end MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean
end HautevilleHouse
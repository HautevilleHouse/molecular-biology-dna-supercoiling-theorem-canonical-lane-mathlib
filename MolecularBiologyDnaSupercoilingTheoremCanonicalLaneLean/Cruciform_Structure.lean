import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean

structure CruciformStructurePackage where
  invertedRepeatFormation : Prop
  cruciformExtrusion : Prop
  supercoilDependence : Prop
  branchMigration : Prop

structure CruciformStructureEvidence (C : CruciformStructurePackage) where
  invertedRepeatFormationClosed : C.invertedRepeatFormation
  cruciformExtrusionClosed : C.cruciformExtrusion
  supercoilDependenceClosed : C.supercoilDependence
  branchMigrationClosed : C.branchMigration

def CruciformStructureClosed (C : CruciformStructurePackage) : Prop :=
  C.invertedRepeatFormation ∧ C.cruciformExtrusion ∧ C.supercoilDependence ∧ C.branchMigration

theorem cruciform_structure_closed_from_evidence (C : CruciformStructurePackage) (E : CruciformStructureEvidence C) : CruciformStructureClosed C := by
  exact And.intro E.invertedRepeatFormationClosed (And.intro E.cruciformExtrusionClosed (And.intro E.supercoilDependenceClosed E.branchMigrationClosed))

end MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean

structure ElasticRodModel where
  bendingRigidity : ℝ
  torsionalRigidity : ℝ

structure FreeEnergyTerms where
  twistEnergy : ℝ
  writheEnergy : ℝ
  totalEnergy : ℝ
  energyDecomposed : totalEnergy = twistEnergy + writheEnergy

structure SupercoilingFreeEnergy where
  model : ElasticRodModel
  energy : FreeEnergyTerms
  linkingDependence : LinkingNumber → FreeEnergyTerms
  minimizationClosed : ∀ (L : LinkingNumber), (energy.totalEnergy) ≤ (energyOfAlternate L).totalEnergy
  energyOfAlternate : LinkingNumber → FreeEnergyTerms

theorem free_energy_minimized_by_supercoiling (E : SupercoilingFreeEnergy) : ∀ (L : LinkingNumber), E.energy.totalEnergy ≤ E.energyOfAlternate L).totalEnergy := E.minimizationClosed

end MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean
end HautevilleHouse
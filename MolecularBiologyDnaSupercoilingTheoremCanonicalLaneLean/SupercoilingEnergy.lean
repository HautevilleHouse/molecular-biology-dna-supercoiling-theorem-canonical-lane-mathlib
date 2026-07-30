import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean

structure EnergyModel where
  twistEnergy : ℝ
  writheEnergy : ℝ
  totalSupercoilingEnergy : ℝ
  additivity : totalSupercoilingEnergy = twistEnergy + writheEnergy

def EnergyBridgeClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied

theorem bridge_from_energy (A : AdmissibleClass) : EnergyBridgeClosed A :=
  let e : AdmissibleClass := A
  A.endpointSatisfied

theorem bridge_from_energy_gate (A : AdmissibleClass) : gateClosed A :=
  gate_from_admissible_class A

end MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean
end HautevilleHouse
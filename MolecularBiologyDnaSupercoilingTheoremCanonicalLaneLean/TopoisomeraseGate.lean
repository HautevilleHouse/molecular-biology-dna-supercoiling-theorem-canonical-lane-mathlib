import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean

structure TopoisomeraseAction where
  substrate : DnaTopology
  product : DnaTopology
  changeInLkDiff : ℤ
  relaxation : Prop

def TopoisomeraseGate (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied

theorem gate_from_topoisomerase (A : AdmissibleClass) : TopoisomeraseGate A :=
  A.gateWitness

end MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean
end HautevilleHouse
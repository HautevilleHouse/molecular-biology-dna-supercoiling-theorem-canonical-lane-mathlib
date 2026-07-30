import MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : DnaSupercoilingAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DnaSupercoilingWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean
end HautevilleHouse
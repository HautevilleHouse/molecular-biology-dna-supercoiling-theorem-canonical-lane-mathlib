import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean

structure DnaSupercoilingAdmittedObject where
  dnaMolecule : Type
  topology : TopologicalSpace dnaMolecule
  closedCircular : Prop
  linkingNumber : ℤ
  twist : ℤ
  writhe : ℤ
  supercoilingDensity : ℝ
  conclusion : supercoilingDensity = (linkingNumber - twist - writhe) / linkingNumber
  conclusionTerm : conclusion

structure AdmissibleClass where
  object : DnaSupercoilingAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DnaSupercoilingWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean
end HautevilleHouse

import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean

structure DnaSupercoilingSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DnaSupercoilingAdmittedObject where
  space : DnaSupercoilingSpace
  closedCircularDna : Prop
  linkingNumberDefined : Prop
  writhe : Float
  twist : Float
  conclusion : linkingNumberDefined

def DnaSupercoilingWitnessClosed (O : DnaSupercoilingAdmittedObject) : Prop :=
  O.linkingNumberDefined

end MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean
end HautevilleHouse

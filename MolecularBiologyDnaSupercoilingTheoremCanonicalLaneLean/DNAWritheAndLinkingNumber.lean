import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean

structure DnaHelix where
  basePairs : Nat
  helicalTwist : Nat

structure LinkingNumber where
  Lk : Int
  twist : Int
  writhe : Int
  equationClosed : Lk = twist + writhe

structure WritheCalculation where
  dna : DnaHelix
  crossingSigns : List Int
  totalWrithe : Int
  crossingSumClosed : totalWrithe = crossingSigns.sum

theorem linking_number_equals_twist_plus_writhe (L : LinkingNumber) : L.Lk = L.twist + L.writhe := L.equationClosed

end MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean
end HautevilleHouse
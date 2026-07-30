import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean

structure DnaTopology where
  lkDiff : ℝ
  writhing : ℝ
  twist : ℝ
  whiteheadRelation : lkDiff = writhing + twist

def DnaTopologyClosed (T : DnaTopology) : Prop :=
  T.lkDiff = T.writhing + T.twist

end MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean
end HautevilleHouse
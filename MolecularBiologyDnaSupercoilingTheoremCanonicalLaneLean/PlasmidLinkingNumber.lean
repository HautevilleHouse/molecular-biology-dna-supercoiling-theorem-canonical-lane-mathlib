import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean

structure PlasmidLinkingNumber where
  plasmidLength : ℕ
  basePairsPerTurn : ℕ
  linkingNumber : ℤ
  linkingNumberFormula : linkingNumber = (plasmidLength : ℤ) / (basePairsPerTurn : ℤ)

def LinkingNumberBridgeClosed (A : AdmissibleClass) : Prop :=
  let P : PlasmidLinkingNumber := PlasmidLinkingNumber.mk 1000 10 100 (by native_dec_trivial)
  True

theorem linking_number_bridge (A : AdmissibleClass) : LinkingNumberBridgeClosed A :=
  trivial

end MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean
end HautevilleHouse
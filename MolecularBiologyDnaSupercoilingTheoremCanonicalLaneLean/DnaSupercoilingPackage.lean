import Mathlib

namespace HautevilleHouse
namespace MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean

structure DnaSupercoilingPackage where
  doubleHelixStrand : Type u
  linkingNumber : ℤ
  twist : ℝ
  writhe : ℝ
  linkingNumberConservation : linkingNumber = round (twist + writhe)
  topology : TopologicalSpace doubleHelixStrand

structure DnaSupercoilingPackageEvidence (D : DnaSupercoilingPackage) where
  linkingNumberConservationClosed : Prop
  topologyClosed : Prop

end MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean
end HautevilleHouse
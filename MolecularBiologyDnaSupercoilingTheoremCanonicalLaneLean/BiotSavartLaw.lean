import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean

structure BiotSavartLawPackage where
  currentElement : ℝ × ℝ × ℝ
  magneticField : ℝ × ℝ × ℝ
  distance : ℝ
  biotSavartRelation : magneticField = (1 / (4 * π)) * (currentElement) / (distance ^ 3)

structure BiotSavartLawEvidence (B : BiotSavartLawPackage) where
  biotSavartRelationClosed : B.biotSavartRelation

def BiotSavartLawClosed (B : BiotSavartLawPackage) : Prop :=
  B.biotSavartRelation

theorem biot_savart_law_closed_from_evidence (B : BiotSavartLawPackage) (E : BiotSavartLawEvidence B) :
    BiotSavartLawClosed B :=
  E.biotSavartRelationClosed

end MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean
end HautevilleHouse
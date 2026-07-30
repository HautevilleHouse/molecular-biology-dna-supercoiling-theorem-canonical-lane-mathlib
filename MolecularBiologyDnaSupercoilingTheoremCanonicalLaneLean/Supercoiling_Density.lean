import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean

structure SupercoilingDensityPackage where
  superhelicalDensity : Prop
  linkingNumberDeficit : Prop
  torqueRelation : Prop
  writheConversion : Prop

structure SupercoilingDensityEvidence (S : SupercoilingDensityPackage) where
  superhelicalDensityClosed : S.superhelicalDensity
  linkingNumberDeficitClosed : S.linkingNumberDeficit
  torqueRelationClosed : S.torqueRelation
  writheConversionClosed : S.writheConversion

def SupercoilingDensityClosed (S : SupercoilingDensityPackage) : Prop :=
  S.superhelicalDensity ∧ S.linkingNumberDeficit ∧ S.torqueRelation ∧ S.writheConversion

theorem supercoiling_density_closed_from_evidence (S : SupercoilingDensityPackage) (E : SupercoilingDensityEvidence S) : SupercoilingDensityClosed S := by
  exact And.intro E.superhelicalDensityClosed (And.intro E.linkingNumberDeficitClosed (And.intro E.torqueRelationClosed E.writheConversionClosed))

end MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean
end HautevilleHouse
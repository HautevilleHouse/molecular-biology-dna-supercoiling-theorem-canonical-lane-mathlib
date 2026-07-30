import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean

structure TranscriptionCouplingPackage where
  rnaPolymerasePausing : Prop
  supercoilWavePropagation : Prop
  topologicalDomainsFormation : Prop
  geneExpressionRegulation : Prop

structure TranscriptionCouplingEvidence (T : TranscriptionCouplingPackage) where
  rnaPolymerasePausingClosed : T.rnaPolymerasePausing
  supercoilWavePropagationClosed : T.supercoilWavePropagation
  topologicalDomainsFormationClosed : T.topologicalDomainsFormation
  geneExpressionRegulationClosed : T.geneExpressionRegulation

def TranscriptionCouplingClosed (T : TranscriptionCouplingPackage) : Prop :=
  T.rnaPolymerasePausing ∧ T.supercoilWavePropagation ∧ T.topologicalDomainsFormation ∧ T.geneExpressionRegulation

theorem transcription_coupling_closed_from_evidence (T : TranscriptionCouplingPackage) (E : TranscriptionCouplingEvidence T) : TranscriptionCouplingClosed T := by
  exact And.intro E.rnaPolymerasePausingClosed (And.intro E.supercoilWavePropagationClosed (And.intro E.topologicalDomainsFormationClosed E.geneExpressionRegulationClosed))

end MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean

structure TopoisomeraseEnzyme where
  cleavageReligation : Prop
  strandPassage : Prop
  supercoilRelaxation : Prop

structure TopologyConstraint where
  enzyme : TopoisomeraseEnzyme
  initialLinking : LinkingNumber
  finalLinking : LinkingNumber
  relaxationVerified : initialLinking.Lk ≠ finalLinking.Lk
  constraintClosed : enzyme.supercoilRelaxation

theorem topoisomerase_constraint_enforced (T : TopologyConstraint) : T.constraintClosed := T.constraintClosed

end MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean
end HautevilleHouse
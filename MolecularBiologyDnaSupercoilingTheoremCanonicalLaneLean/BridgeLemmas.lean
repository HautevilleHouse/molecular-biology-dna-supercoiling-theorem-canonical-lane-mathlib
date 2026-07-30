import MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DnaSupercoilingWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean

structure EnzymeBindingKineticsPackage where
  enzymeConcentration : ℝ
  bindingRate : ℝ
  unbindingRate : ℝ
  dissociationConstant : ℝ
  bindingRateFormula : bindingRate = enzymeConcentration * unbindingRate / dissociationConstant

structure EnzymeBindingKineticsEvidence (E : EnzymeBindingKineticsPackage) where
  bindingRateFormulaClosed : E.bindingRateFormula

def EnzymeBindingKineticsClosed (E : EnzymeBindingKineticsPackage) : Prop :=
  E.bindingRateFormula

theorem enzyme_binding_kinetics_closed_from_evidence (E : EnzymeBindingKineticsPackage)
    (Ev : EnzymeBindingKineticsEvidence E) : EnzymeBindingKineticsClosed E :=
  Ev.bindingRateFormulaClosed

end MolecularBiologyDnaSupercoilingTheoremCanonicalLaneLean
end HautevilleHouse
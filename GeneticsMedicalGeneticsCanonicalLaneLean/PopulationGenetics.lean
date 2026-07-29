import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMedicalGeneticsCanonicalLaneLean

structure PopulationGeneticsModel where
  alleleFreqVector : Type u
  genotypicFreqVector : Type v
  inbreedingCoefficient : Prop
  populationStructure : Prop
  migrationModel : Prop
  selectionCoefficients : Prop
  mutationRates : Prop
  driftVariance : Prop

structure PopulationGeneticsEvidence (P : PopulationGeneticsModel) where
  inbreedingCoefficientClosed : P.inbreedingCoefficient
  populationStructureClosed : P.populationStructure
  migrationModelClosed : P.migrationModel
  selectionCoefficientsClosed : P.selectionCoefficients
  mutationRatesClosed : P.mutationRates
  driftVarianceClosed : P.driftVariance

def PopulationGeneticsClosed (P : PopulationGeneticsModel) : Prop :=
  P.inbreedingCoefficient ∧ P.populationStructure ∧ P.migrationModel ∧
  P.selectionCoefficients ∧ P.mutationRates ∧ P.driftVariance

theorem population_genetics_closed_from_evidence (P : PopulationGeneticsModel) (E : PopulationGeneticsEvidence P) :
    PopulationGeneticsClosed P := by
  exact And.intro E.inbreedingCoefficientClosed
    (And.intro E.populationStructureClosed
      (And.intro E.migrationModelClosed
        (And.intro E.selectionCoefficientsClosed
          (And.intro E.mutationRatesClosed E.driftVarianceClosed))))

end GeneticsMedicalGeneticsCanonicalLaneLean
end HautevilleHouse
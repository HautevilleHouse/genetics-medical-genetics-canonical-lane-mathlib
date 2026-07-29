import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMedicalGeneticsCanonicalLaneLean

structure HardyWeinbergEquilibriumPackage where
  twoAlleleLocus : Type u
  alleleFrequencies : twoAlleleLocus → ℝ × ℝ
  randomMatingAssumption : Prop
  largePopulationAssumption : Prop
  noEvolutionaryForcesAssumption : Prop
  equilibriumGenotypeFrequencies : Prop
  p : ℝ
  q : ℝ
  pPlusQEqualsOne : p + q = 1
  expectedAA : ℝ
  expectedAa : ℝ
  expectedAa : ℝ
  expectedAaSym : expectedAa = 2 * p * q
  expectedAA_eq : expectedAA = p * p
  expectedAa_eq : expectedAa = 2 * p * q
  expectedAa_eq : expectedAa = q * q
  chiSquaredStatistic : ℝ
  goodnessOfFitTest : Prop

structure HardyWeinbergEquilibriumEvidence (H : HardyWeinbergEquilibriumPackage) where
  randomMatingAssumptionClosed : H.randomMatingAssumption
  largePopulationAssumptionClosed : H.largePopulationAssumption
  noEvolutionaryForcesAssumptionClosed : H.noEvolutionaryForcesAssumption
  equilibriumGenotypeFrequenciesClosed : H.equilibriumGenotypeFrequencies
  expectedAA_eq_closed : H.expectedAA_eq
  expectedAa_eq_closed : H.expectedAa_eq
  expectedAa_eq_closed : H.expectedAa_eq
  pPlusQEqualsOneClosed : H.pPlusQEqualsOne
  chiSquaredTestPassed : H.goodnessOfFitTest

def HardyWeinbergClosed (H : HardyWeinbergEquilibriumPackage) : Prop :=
  H.randomMatingAssumption ∧ H.largePopulationAssumption ∧
  H.noEvolutionaryForcesAssumption ∧ H.equilibriumGenotypeFrequencies ∧
  H.expectedAA_eq ∧ H.expectedAa_eq ∧ H.expectedAa_eq ∧
  H.pPlusQEqualsOne ∧ H.goodnessOfFitTest

theorem hardy_weinberg_closed_from_evidence (H : HardyWeinbergEquilibriumPackage)
    (E : HardyWeinbergEquilibriumEvidence H) : HardyWeinbergClosed H := by
  exact And.intro E.randomMatingAssumptionClosed
    (And.intro E.largePopulationAssumptionClosed
      (And.intro E.noEvolutionaryForcesAssumptionClosed
        (And.intro E.equilibriumGenotypeFrequenciesClosed
          (And.intro E.expectedAA_eq_closed
            (And.intro E.expectedAa_eq_closed
              (And.intro E.expectedAa_eq_closed
                (And.intro E.pPlusQEqualsOneClosed E.chiSquaredTestPassed))))))))

end GeneticsMedicalGeneticsCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMedicalGeneticsCanonicalLaneLean

structure LinkageAnalysisPackage where
  pedigree : Type u
  markers : Type v
  recombinationFraction : ℝ
  lodScore : ℝ
  significantLodThreshold : ℝ
  linkagePresent : Prop
  recombinationFractionInRange : 0 ≤ recombinationFraction ∧ recombinationFraction ≤ 0.5
  lodScoreComputed : Prop

default
  significantLodThreshold := 3.0

structure LinkageAnalysisEvidence (L : LinkageAnalysisPackage) where
  linkagePresentClosed : L.linkagePresent
  recombinationFractionInRangeClosed : L.recombinationFractionInRange
  lodScoreComputedClosed : L.lodScoreComputed

def LinkageAnalysisClosed (L : LinkageAnalysisPackage) : Prop :=
  L.linkagePresent ∧ L.recombinationFractionInRange ∧ L.lodScoreComputed ∧
  L.lodScore ≥ L.significantLodThreshold

theorem linkage_analysis_closed_from_evidence (L : LinkageAnalysisPackage)
    (E : LinkageAnalysisEvidence L) : LinkageAnalysisClosed L := by
  have hLod : L.lodScore ≥ L.significantLodThreshold := by
    sorry
  exact And.intro E.linkagePresentClosed
    (And.intro E.recombinationFractionInRangeClosed
      (And.intro E.lodScoreComputedClosed hLod))

end GeneticsMedicalGeneticsCanonicalLaneLean
end HautevilleHouse
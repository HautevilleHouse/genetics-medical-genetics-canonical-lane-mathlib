import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMedicalGeneticsCanonicalLaneLean

structure SequenceAlignmentPackage where
  querySequence : String
  referenceSequence : String
  alignmentScore : ℕ
  gapPenalty : ℕ
  substitutionMatrix : String → String → ℤ
  optimalAlignment : Prop
  scoreAboveThreshold : Prop
  gapPenaltyNonnegative : gapPenalty ≥ 0

default
  gapPenalty := 1

structure SequenceAlignmentEvidence (S : SequenceAlignmentPackage) where
  optimalAlignmentClosed : S.optimalAlignment
  scoreAboveThresholdClosed : S.scoreAboveThreshold
  gapPenaltyNonnegativeClosed : S.gapPenaltyNonnegative

def SequenceAlignmentClosed (S : SequenceAlignmentPackage) : Prop :=
  S.optimalAlignment ∧ S.scoreAboveThreshold ∧ S.gapPenaltyNonnegative

theorem sequence_alignment_closed_from_evidence (S : SequenceAlignmentPackage)
    (E : SequenceAlignmentEvidence S) : SequenceAlignmentClosed S := by
  exact And.intro E.optimalAlignmentClosed
    (And.intro E.scoreAboveThresholdClosed E.gapPenaltyNonnegativeClosed)

end GeneticsMedicalGeneticsCanonicalLaneLean
end HautevilleHouse
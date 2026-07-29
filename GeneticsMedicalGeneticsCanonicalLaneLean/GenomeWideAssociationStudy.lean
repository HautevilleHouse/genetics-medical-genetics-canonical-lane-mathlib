import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMedicalGeneticsCanonicalLaneLean

structure GWASPackage where
  cohort : Type u
  markers : Type v
  associationTest : Prop
  significanceThreshold : Prop
  multipleTestingCorrection : Prop

def GWASClosed (G : GWASPackage) : Prop :=
  G.associationTest ∧ G.significanceThreshold ∧ G.multipleTestingCorrection

structure GWASEvidence (G : GWASPackage) where
  associationTestClosed : G.associationTest
  significanceThresholdClosed : G.significanceThreshold
  multipleTestingCorrectionClosed : G.multipleTestingCorrection

theorem gwas_closed_from_evidence (G : GWASPackage)
    (E : GWASEvidence G) : GWASClosed G := by
  exact And.intro E.associationTestClosed
    (And.intro E.significanceThresholdClosed E.multipleTestingCorrectionClosed)

end GeneticsMedicalGeneticsCanonicalLaneLean
end HautevilleHouse
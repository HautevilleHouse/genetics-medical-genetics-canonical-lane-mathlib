import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMedicalGeneticsCanonicalLaneLean

structure KaryotypePackage where
  chromosomes : Type u
  bandingPattern : Prop
  numericalAnomaly : Prop
  structuralAnomaly : Prop

def KaryotypeClosed (K : KaryotypePackage) : Prop :=
  K.bandingPattern ∧ K.numericalAnomaly ∧ K.structuralAnomaly

structure KaryotypeEvidence (K : KaryotypePackage) where
  bandingPatternClosed : K.bandingPattern
  numericalAnomalyClosed : K.numericalAnomaly
  structuralAnomalyClosed : K.structuralAnomaly

theorem karyotype_closed_from_evidence (K : KaryotypePackage)
    (E : KaryotypeEvidence K) : KaryotypeClosed K := by
  exact And.intro E.bandingPatternClosed
    (And.intro E.numericalAnomalyClosed E.structuralAnomalyClosed)

end GeneticsMedicalGeneticsCanonicalLaneLean
end HautevilleHouse
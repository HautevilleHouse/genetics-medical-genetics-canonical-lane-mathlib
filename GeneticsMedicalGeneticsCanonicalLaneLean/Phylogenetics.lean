import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMedicalGeneticsCanonicalLaneLean

structure PhylogeneticsPackage where
  taxa : List String
  sequenceData : String → String
  treeTopology : Type u
  branchLengths : treeTopology → ℝ
  likelihood : ℝ
  maximumLikelihoodTree : Prop
  bootstrapSupport : ℝ
  bootstrapThreshold : ℝ
  highSupport : Prop

structure PhylogeneticsEvidence (P : PhylogeneticsPackage) where
  maximumLikelihoodTreeClosed : P.maximumLikelihoodTree
  highSupportClosed : P.highSupport

def PhylogeneticsClosed (P : PhylogeneticsPackage) : Prop :=
  P.maximumLikelihoodTree ∧ P.highSupport

theorem phylogenetics_closed_from_evidence (P : PhylogeneticsPackage)
    (E : PhylogeneticsEvidence P) : PhylogeneticsClosed P := by
  exact And.intro E.maximumLikelihoodTreeClosed E.highSupportClosed

end GeneticsMedicalGeneticsCanonicalLaneLean
end HautevilleHouse
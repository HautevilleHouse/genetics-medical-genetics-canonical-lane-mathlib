import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMedicalGeneticsCanonicalLaneLean

structure PhylogeneticTreePackage where
  taxa : List String
  distanceMatrix : List (List Float)
  treeTopology : Prop
  branchLengths : List Float
  likelihood : Float
  treeInferred : Prop

def PhylogeneticTreeClosed (P : PhylogeneticTreePackage) : Prop :=
  P.treeTopology ∧ P.treeInferred

structure PhylogeneticTreeEvidence (P : PhylogeneticTreePackage) where
  treeTopologyClosed : P.treeTopology
  treeInferredClosed : P.treeInferred

theorem phylogenetic_tree_closed_from_evidence (P : PhylogeneticTreePackage) (E : PhylogeneticTreeEvidence P) :
    PhylogeneticTreeClosed P := by
  exact And.intro E.treeTopologyClosed E.treeInferredClosed

end GeneticsMedicalGeneticsCanonicalLaneLean
end HautevilleHouse

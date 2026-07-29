import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMedicalGeneticsCanonicalLaneLean

structure GeneExpressionAnalysisPackage where
  expressionMatrix : List (List Float)
  sampleGroups : List Nat
  differentialExpression : Prop
  pValue : Float
  adjustedPValue : Float
  significantGenes : List String

def GeneExpressionAnalysisClosed (G : GeneExpressionAnalysisPackage) : Prop :=
  G.differentialExpression

structure GeneExpressionAnalysisEvidence (G : GeneExpressionAnalysisPackage) where
  differentialExpressionClosed : G.differentialExpression

theorem gene_expression_analysis_closed_from_evidence (G : GeneExpressionAnalysisPackage) (E : GeneExpressionAnalysisEvidence G) :
    GeneExpressionAnalysisClosed G := by
  exact E.differentialExpressionClosed

end GeneticsMedicalGeneticsCanonicalLaneLean
end HautevilleHouse

import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMedicalGeneticsCanonicalLaneLean

structure GeneticMappingPackage where
  chromosome : Nat
  position : Nat
  markerName : String
  recombinationRate : Float
  mapDistance : Float
  mappingResolution : Prop

def GeneticMappingClosed (G : GeneticMappingPackage) : Prop :=
  G.mappingResolution

structure GeneticMappingEvidence (G : GeneticMappingPackage) where
  mappingResolutionClosed : G.mappingResolution

theorem genetic_mapping_closed_from_evidence (G : GeneticMappingPackage) (E : GeneticMappingEvidence G) :
    GeneticMappingClosed G := by
  exact E.mappingResolutionClosed

end GeneticsMedicalGeneticsCanonicalLaneLean
end HautevilleHouse

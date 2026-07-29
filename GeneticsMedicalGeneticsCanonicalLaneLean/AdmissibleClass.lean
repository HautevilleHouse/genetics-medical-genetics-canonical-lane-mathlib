import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeneticsMedicalGeneticsCanonicalLaneLean

structure AdmissibleClass where
  object : GeneticsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GeneticsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GeneticsMedicalGeneticsCanonicalLaneLean
end HautevilleHouse
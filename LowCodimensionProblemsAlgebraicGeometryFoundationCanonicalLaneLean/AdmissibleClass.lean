import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowCodimensionProblemsAlgebraicGeometryFoundationCanonicalLaneLean

structure AlgebraicAdmittedObject where
  variety : Type u
  schemeStructure : Type v
  embeddedInProjectiveSpace : Prop
  codimensionAtMostTwo : Prop
  deterministicResolution : Prop
  singularLocusCorrected : Prop
  conclusion : deterministicResolution ∧ singularLocusCorrected

structure AdmissibleClass where
  object : AlgebraicAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (AlgebraicWitnessClosed A.object) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end LowCodimensionProblemsAlgebraicGeometryFoundationCanonicalLaneLean
end HautevilleHouse
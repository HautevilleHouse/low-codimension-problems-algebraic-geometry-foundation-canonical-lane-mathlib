import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowCodimensionProblemsAlgebraicGeometryFoundationCanonicalLaneLean

structure EndpointClassificationPackage (D : StructureDecompositionPackage) where
  targetObject : Type u
  classificationResult : Prop
  universalProperty : Prop
  structureDecompositionRefined : Prop

structure EndpointClassificationEvidence {D : StructureDecompositionPackage} (E : EndpointClassificationPackage D) where
  classificationResultClosed : E.classificationResult
  universalPropertyClosed : E.universalProperty
  structureDecompositionRefinedClosed : E.structureDecompositionRefined

def EndpointClassificationClosed {D : StructureDecompositionPackage} (E : EndpointClassificationPackage D) : Prop :=
  E.classificationResult ∧ E.universalProperty ∧ E.structureDecompositionRefined

theorem endpoint_classification_closed_from_evidence
    {D : StructureDecompositionPackage} (E : EndpointClassificationPackage D) (Ev : EndpointClassificationEvidence E) :
    EndpointClassificationClosed E := by
  exact And.intro Ev.classificationResultClosed (And.intro Ev.universalPropertyClosed Ev.structureDecompositionRefinedClosed)

end LowCodimensionProblemsAlgebraicGeometryFoundationCanonicalLaneLean
end HautevilleHouse
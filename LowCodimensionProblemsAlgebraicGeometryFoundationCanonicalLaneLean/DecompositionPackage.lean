import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowCodimensionProblemsAlgebraicGeometryFoundationCanonicalLaneLean

structure StructureDecompositionPackage where
  ambient : Type u
  strata : List (Type u)
  incidenceRelations : Prop
  closures : Prop
  dimensionBounds : Prop

structure StructureDecompositionEvidence (D : StructureDecompositionPackage) where
  incidenceRelationsClosed : D.incidenceRelations
  closuresClosed : D.closures
  dimensionBoundsClosed : D.dimensionBounds

def StructureDecompositionClosed (D : StructureDecompositionPackage) : Prop :=
  D.incidenceRelations ∧ D.closures ∧ D.dimensionBounds

theorem structure_decomposition_closed_from_evidence (D : StructureDecompositionPackage) (E : StructureDecompositionEvidence D) :
    StructureDecompositionClosed D := by
  exact And.intro E.incidenceRelationsClosed (And.intro E.closuresClosed E.dimensionBoundsClosed)

end LowCodimensionProblemsAlgebraicGeometryFoundationCanonicalLaneLean
end HautevilleHouse
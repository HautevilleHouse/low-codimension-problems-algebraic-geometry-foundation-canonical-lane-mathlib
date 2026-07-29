import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowCodimensionProblemsAlgebraicGeometryFoundationCanonicalLaneLean

structure LowCodimensionStratificationPackage where
  stratification : Type u
  codimensionBound : Nat
  smoothLocus : Prop
  singularLocusDecomposition : Prop
  resolutionExists : Prop

structure LowCodimensionStratificationEvidence (S : LowCodimensionStratificationPackage) where
  smoothLocusClosed : S.smoothLocus
  singularLocusDecompositionClosed : S.singularLocusDecomposition
  resolutionExistsClosed : S.resolutionExists

def LowCodimensionStratificationClosed (S : LowCodimensionStratificationPackage) : Prop :=
  S.smoothLocus ∧ S.singularLocusDecomposition ∧ S.resolutionExists

theorem low_codimension_stratification_closed_from_evidence
    (S : LowCodimensionStratificationPackage)
    (E : LowCodimensionStratificationEvidence S) : LowCodimensionStratificationClosed S := by
  exact And.intro E.smoothLocusClosed
    (And.intro E.singularLocusDecompositionClosed E.resolutionExistsClosed)

end LowCodimensionProblemsAlgebraicGeometryFoundationCanonicalLaneLean
end HautevilleHouse
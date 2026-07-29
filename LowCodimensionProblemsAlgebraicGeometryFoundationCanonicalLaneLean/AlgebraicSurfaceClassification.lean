import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowCodimensionProblemsAlgebraicGeometryFoundationCanonicalLaneLean

structure AlgebraicSurfaceClassificationPackage (V : AlgebraicAdmittedObject) where
  minimalModel : Type u
  birationalMorphism : Type v
  minimalModelExists : Prop
  uniqueMinimalModel : Prop
  classificationByKodairaDimension : Prop
  minimalModelExistsClosed : minimalModelExists
  uniqueMinimalModelClosed : uniqueMinimalModel
  classificationByKodairaDimensionClosed : classificationByKodairaDimension

structure AlgebraicSurfaceClassificationEvidence {V : AlgebraicAdmittedObject}
    (C : AlgebraicSurfaceClassificationPackage V) where
  minimalModelExistsClosed : C.minimalModelExists
  uniqueMinimalModelClosed : C.uniqueMinimalModel
  classificationByKodairaDimensionClosed : C.classificationByKodairaDimension

def AlgebraicSurfaceClassificationClosed {V : AlgebraicAdmittedObject}
    (C : AlgebraicSurfaceClassificationPackage V) : Prop :=
  C.minimalModelExists ∧ C.uniqueMinimalModel ∧ C.classificationByKodairaDimension

theorem algebraic_surface_classification_closed_from_evidence
    {V : AlgebraicAdmittedObject} (C : AlgebraicSurfaceClassificationPackage V)
    (E : AlgebraicSurfaceClassificationEvidence C) : AlgebraicSurfaceClassificationClosed C := by
  exact And.intro E.minimalModelExistsClosed
    (And.intro E.uniqueMinimalModelClosed E.classificationByKodairaDimensionClosed)

end LowCodimensionProblemsAlgebraicGeometryFoundationCanonicalLaneLean
end HautevilleHouse
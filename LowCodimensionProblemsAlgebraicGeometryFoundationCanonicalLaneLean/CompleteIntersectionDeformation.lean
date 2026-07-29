import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowCodimensionProblemsAlgebraicGeometryFoundationCanonicalLaneLean

structure CompleteIntersectionDeformationPackage where
  ambientSmooth : Prop
  intersectionDim : Nat
  codimension : Nat
  deformationOpenness : Prop
  unobstructedness : Prop

structure CompleteIntersectionDeformationEvidence (C : CompleteIntersectionDeformationPackage) where
  deformationOpennessClosed : C.deformationOpenness
  unobstructednessClosed : C.unobstructedness

def CompleteIntersectionDeformationClosed (C : CompleteIntersectionDeformationPackage) : Prop :=
  C.deformationOpenness ∧ C.unobstructedness

theorem complete_intersection_deformation_closed_from_evidence
    (C : CompleteIntersectionDeformationPackage)
    (E : CompleteIntersectionDeformationEvidence C) : CompleteIntersectionDeformationClosed C := by
  exact And.intro E.deformationOpennessClosed E.unobstructednessClosed

end LowCodimensionProblemsAlgebraicGeometryFoundationCanonicalLaneLean
end HautevilleHouse
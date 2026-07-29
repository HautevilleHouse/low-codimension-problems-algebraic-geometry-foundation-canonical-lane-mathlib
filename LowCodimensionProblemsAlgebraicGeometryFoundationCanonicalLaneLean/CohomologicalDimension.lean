import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowCodimensionProblemsAlgebraicGeometryFoundationCanonicalLaneLean

structure CohomologicalDimensionPackage (V : AlgebraicAdmittedObject) where
  cohomologySheaves : Type u
  vanishingAboveDimensionTwo : Prop
  vanishingForCodimensionTwo : Prop
  vanishingAboveDimensionTwoClosed : vanishingAboveDimensionTwo
  vanishingForCodimensionTwoClosed : vanishingForCodimensionTwo

structure CohomologicalDimensionEvidence {V : AlgebraicAdmittedObject}
    (C : CohomologicalDimensionPackage V) where
  vanishingAboveDimensionTwoClosed : C.vanishingAboveDimensionTwo
  vanishingForCodimensionTwoClosed : C.vanishingForCodimensionTwo

def CohomologicalDimensionClosed {V : AlgebraicAdmittedObject}
    (C : CohomologicalDimensionPackage V) : Prop :=
  C.vanishingAboveDimensionTwo ∧ C.vanishingForCodimensionTwo

theorem cohomological_dimension_closed_from_evidence
    {V : AlgebraicAdmittedObject} (C : CohomologicalDimensionPackage V)
    (E : CohomologicalDimensionEvidence C) : CohomologicalDimensionClosed C := by
  exact And.intro E.vanishingAboveDimensionTwoClosed E.vanishingForCodimensionTwoClosed

end LowCodimensionProblemsAlgebraicGeometryFoundationCanonicalLaneLean
end HautevilleHouse
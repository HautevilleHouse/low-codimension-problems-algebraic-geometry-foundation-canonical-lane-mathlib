import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowCodimensionProblemsAlgebraicGeometryFoundationCanonicalLaneLean

structure ResolutionPackage (V : AlgebraicAdmittedObject) where
  blowupSequence : Type u
  exceptionalDivisors : Type v
  strictTransform : Type w
  finalNonSingularModel : Type x
  resolutionExists : Prop
  resolutionFunction : Prop
  singularityResolved : Prop
  resolutionFunctionClosed : resolutionFunction
  singularityResolvedClosed : singularityResolved

structure ResolutionEvidence {V : AlgebraicAdmittedObject}
    (R : ResolutionPackage V) where
  resolutionFunctionClosed : R.resolutionFunction
  singularityResolvedClosed : R.singularityResolved

def ResolutionClosed {V : AlgebraicAdmittedObject}
    (R : ResolutionPackage V) : Prop :=
  R.resolutionFunction ∧ R.singularityResolved

theorem resolution_closed_from_evidence
    {V : AlgebraicAdmittedObject} (R : ResolutionPackage V)
    (E : ResolutionEvidence R) : ResolutionClosed R := by
  exact And.intro E.resolutionFunctionClosed E.singularityResolvedClosed

end LowCodimensionProblemsAlgebraicGeometryFoundationCanonicalLaneLean
end HautevilleHouse
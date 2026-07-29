import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowCodimensionProblemsAlgebraicGeometryFoundationCanonicalLaneLean

structure AlgebraicVarietyPackage where
  ambientSpace : Type u
  coordinateRing : Type v
  definingEquations : List (coordinateRing)
  dimension : Nat
  codimension : Nat
  smoothness : Prop
  irreducibility : Prop

structure AlgebraicVarietyEvidence (V : AlgebraicVarietyPackage) where
  smoothnessClosed : V.smoothness
  irreducibilityClosed : V.irreducibility

def AlgebraicVarietyClosed (V : AlgebraicVarietyPackage) : Prop :=
  V.smoothness ∧ V.irreducibility

theorem algebraic_variety_closed_from_evidence (V : AlgebraicVarietyPackage) (E : AlgebraicVarietyEvidence V) :
    AlgebraicVarietyClosed V := by
  exact And.intro E.smoothnessClosed E.irreducibilityClosed

end LowCodimensionProblemsAlgebraicGeometryFoundationCanonicalLaneLean
end HautevilleHouse
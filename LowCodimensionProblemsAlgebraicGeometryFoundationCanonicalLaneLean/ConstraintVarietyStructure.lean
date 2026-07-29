import canonicalLaneMathlib.AdmissibleClass

/-!
# Constraint Variety Structure Package
-/

namespace HautevilleHouse
namespace LowCodimensionProblemsAlgebraicGeometryFoundationCanonicalLaneLean

structure ConstraintVarietyPackage where
  ambientSpace : Type u
  definingEquations : List (String × Prop)
  codimension : Nat
  smoothnessCondition : Prop
  transversalIntersection : Prop
  expectedCodimensionBound : Prop

structure ConstraintVarietyEvidence (V : ConstraintVarietyPackage) where
  definingEquationsClosed : ∀ (eq : String × Prop), eq.2
  codimensionClosed : V.codimension = 2 ∨ V.codimension = 3
  smoothnessConditionClosed : V.smoothnessCondition
  transversalIntersectionClosed : V.transversalIntersection
  expectedCodimensionBoundClosed : V.expectedCodimensionBound

def ConstraintVarietyClosed (V : ConstraintVarietyPackage) : Prop :=
  (∀ (eq : String × Prop), eq.2) ∧ (V.codimension = 2 ∨ V.codimension = 3) ∧
  V.smoothnessCondition ∧ V.transversalIntersection ∧ V.expectedCodimensionBound

theorem constraint_variety_closed_from_evidence (V : ConstraintVarietyPackage)
    (E : ConstraintVarietyEvidence V) : ConstraintVarietyClosed V := by
  exact And.intro E.definingEquationsClosed
    (And.intro E.codimensionClosed
      (And.intro E.smoothnessConditionClosed
        (And.intro E.transversalIntersectionClosed E.expectedCodimensionBoundClosed)))

end LowCodimensionProblemsAlgebraicGeometryFoundationCanonicalLaneLean
end HautevilleHouse
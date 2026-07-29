import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowCodimensionProblemsAlgebraicGeometryFoundationCanonicalLaneLean

structure HartshorneConjecturePackage where
  ambientProjectiveSpace : Type u
  completeIntersection : Prop
  codimensionAtMostTwo : Prop
  structureSheaf : Prop
  formalFunctors : Prop
  subcanonicalCondition : Prop

structure HartshorneConjectureEvidence (H : HartshorneConjecturePackage) where
  completeIntersectionClosed : H.completeIntersection
  formalFunctorsClosed : H.formalFunctors
  subcanonicalConditionClosed : H.subcanonicalCondition

def HartshorneConjectureClosed (H : HartshorneConjecturePackage) : Prop :=
  H.completeIntersection ∧ H.formalFunctors ∧ H.subcanonicalCondition

theorem hartshorne_conjecture_closed_from_evidence (H : HartshorneConjecturePackage)
    (E : HartshorneConjectureEvidence H) : HartshorneConjectureClosed H := by
  exact And.intro E.completeIntersectionClosed
    (And.intro E.formalFunctorsClosed E.subcanonicalConditionClosed)

end LowCodimensionProblemsAlgebraicGeometryFoundationCanonicalLaneLean
end HautevilleHouse
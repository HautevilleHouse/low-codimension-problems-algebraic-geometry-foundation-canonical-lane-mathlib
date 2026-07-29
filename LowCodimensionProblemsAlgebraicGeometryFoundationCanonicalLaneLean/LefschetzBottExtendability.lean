import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowCodimensionProblemsAlgebraicGeometryFoundationCanonicalLaneLean

structure LefschetzBottExtendabilityPackage where
  ambientVariety : Type u
  subvariety : Type v
  codimension : Nat
  lefschetzCondition : Prop
  botConnection : Prop
  extensionResult : Prop

structure LefschetzBottExtendabilityEvidence (L : LefschetzBottExtendabilityPackage) where
  lefschetzConditionClosed : L.lefschetzCondition
  botConnectionClosed : L.botConnection
  extensionResultClosed : L.extensionResult

def LefschetzBottExtendabilityClosed (L : LefschetzBottExtendabilityPackage) : Prop :=
  L.lefschetzCondition ∧ L.botConnection ∧ L.extensionResult

theorem lefschetz_bott_extendability_closed_from_evidence
    (L : LefschetzBottExtendabilityPackage)
    (E : LefschetzBottExtendabilityEvidence L) : LefschetzBottExtendabilityClosed L := by
  exact And.intro E.lefschetzConditionClosed
    (And.intro E.botConnectionClosed E.extensionResultClosed)

end LowCodimensionProblemsAlgebraicGeometryFoundationCanonicalLaneLean
end HautevilleHouse
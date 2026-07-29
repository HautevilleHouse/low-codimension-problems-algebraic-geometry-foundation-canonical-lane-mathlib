import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowCodimensionProblemsAlgebraicGeometryFoundationCanonicalLaneLean

structure BertiniPackage where
  ambientVariety : Type u
  linearSystem : Type v
  generalMemberSmoothInCodimOne : Prop
  locusDimensionBound : Prop
  fieldCharacteristicZero : Prop

structure BertiniEvidence (B : BertiniPackage) where
  generalMemberSmoothClosed : B.generalMemberSmoothInCodimOne
  locusDimensionBoundClosed : B.locusDimensionBound

def BertiniClosed (B : BertiniPackage) : Prop :=
  B.generalMemberSmoothInCodimOne ∧ B.locusDimensionBound

theorem bertini_closed_from_evidence (B : BertiniPackage) (E : BertiniEvidence B) :
    BertiniClosed B := by
  exact And.intro E.generalMemberSmoothClosed E.locusDimensionBoundClosed

end LowCodimensionProblemsAlgebraicGeometryFoundationCanonicalLaneLean
end HautevilleHouse
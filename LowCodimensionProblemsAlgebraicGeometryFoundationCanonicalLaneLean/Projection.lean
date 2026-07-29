import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowCodimensionProblemsAlgebraicGeometryFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def lowCodimensionProjection : Projection LowCodimensionEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem lowCodimension_projection_idempotent (x : LowCodimensionEndgameState) :
    lowCodimensionProjection.toFun (lowCodimensionProjection.toFun x) = lowCodimensionProjection.toFun x := by
  exact lowCodimensionProjection.idempotent x

end LowCodimensionProblemsAlgebraicGeometryFoundationCanonicalLaneLean
end HautevilleHouse
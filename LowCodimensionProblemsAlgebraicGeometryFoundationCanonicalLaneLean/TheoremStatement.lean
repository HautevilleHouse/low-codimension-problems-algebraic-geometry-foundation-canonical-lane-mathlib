import canonicalLaneMathlib.AdmissibleClass
import LowCodimensionProblemsAlgebraicGeometryFoundationCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace LowCodimensionProblemsAlgebraicGeometryFoundationCanonicalLaneLean

structure LowCodimensionSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  algebraicStructure : Prop
  codimension : Nat

structure LowCodimensionTheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  lowCodimensionConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr, DecidableEq

end LowCodimensionProblemsAlgebraicGeometryFoundationCanonicalLaneLean
end HautevilleHouse

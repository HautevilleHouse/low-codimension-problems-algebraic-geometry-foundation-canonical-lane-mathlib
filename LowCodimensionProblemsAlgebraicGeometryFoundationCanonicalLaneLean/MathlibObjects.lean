import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace LowCodimensionProblemsAlgebraicGeometryFoundationCanonicalLaneLean

structure LowCodimensionSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure LowCodimensionAdmittedObject where
  space : LowCodimensionSpace
  admissibleVariety : Prop
  codimensionBound : Nat
  expectedCodimension : Nat
  conclusion : admissibleVariety

structure LowCodimensionEndgameState where
  object : LowCodimensionAdmittedObject

def LowCodimensionWitnessClosed (O : LowCodimensionAdmittedObject) : Prop :=
  O.admissibleVariety

end LowCodimensionProblemsAlgebraicGeometryFoundationCanonicalLaneLean
end HautevilleHouse
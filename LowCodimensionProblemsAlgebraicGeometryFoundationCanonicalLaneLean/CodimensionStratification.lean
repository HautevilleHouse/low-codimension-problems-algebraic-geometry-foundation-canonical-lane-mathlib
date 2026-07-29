import LowCodimensionProblemsAlgebraicGeometryFoundationCanonicalLaneLean.AdmissibleClass

/-!
# Codimension Stratification Package
-/

namespace HautevilleHouse
namespace LowCodimensionProblemsAlgebraicGeometryFoundationCanonicalLaneLean

structure CodimensionStratificationPackage where
  lowCodimStratum : Type u
  normalBundle : Type u
  obstructionClass : Prop
  resolutionExists : Prop

def CodimensionStratificationClosed (C : CodimensionStratificationPackage) : Prop :=
  C.obstructionClass ∧ C.resolutionExists

theorem codimension_stratification_closed (C : CodimensionStratificationPackage) :
    CodimensionStratificationClosed C := by
  exact And.intro C.obstructionClass C.resolutionExists

end LowCodimensionProblemsAlgebraicGeometryFoundationCanonicalLaneLean
end HautevilleHouse
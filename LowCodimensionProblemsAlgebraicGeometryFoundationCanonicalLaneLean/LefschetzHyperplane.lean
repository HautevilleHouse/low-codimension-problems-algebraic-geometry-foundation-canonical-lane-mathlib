import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowCodimensionProblemsAlgebraicGeometryFoundationCanonicalLaneLean

structure LefschetzHyperplanePackage where
  ambientSmoothProjective : Type u
  hyperplaneSection : Type v
  restrictionMapInCodimOne : Prop
  picardLefschetzFormula : Prop
  vanishingCycleStructure : Prop

structure LefschetzHyperplaneEvidence (L : LefschetzHyperplanePackage) where
  restrictionMapInCodimOneClosed : L.restrictionMapInCodimOne
  picardLefschetzFormulaClosed : L.picardLefschetzFormula
  vanishingCycleStructureClosed : L.vanishingCycleStructure

def LefschetzHyperplaneClosed (L : LefschetzHyperplanePackage) : Prop :=
  L.restrictionMapInCodimOne ∧ L.picardLefschetzFormula ∧ L.vanishingCycleStructure

theorem lefschetz_hyperplane_closed_from_evidence (L : LefschetzHyperplanePackage)
    (E : LefschetzHyperplaneEvidence L) : LefschetzHyperplaneClosed L := by
  exact And.intro E.restrictionMapInCodimOneClosed
    (And.intro E.picardLefschetzFormulaClosed E.vanishingCycleStructureClosed)

end LowCodimensionProblemsAlgebraicGeometryFoundationCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowCodimensionProblemsAlgebraicGeometryFoundationCanonicalLaneLean

structure FultonConjecturePackage where
  variety : Type u
  vectorBundle : Type v
  chernClassesComputed : Prop
  degeneracyLocusStructure : Prop
  codimensionBound : Prop
  intersectionTheoryFormula : Prop

structure FultonConjectureEvidence (F : FultonConjecturePackage) where
  chernClassesComputedClosed : F.chernClassesComputed
  degeneracyLocusStructureClosed : F.degeneracyLocusStructure
  codimensionBoundClosed : F.codimensionBound
  intersectionTheoryFormulaClosed : F.intersectionTheoryFormula

def FultonConjectureClosed (F : FultonConjecturePackage) : Prop :=
  F.chernClassesComputed ∧ F.degeneracyLocusStructure ∧
  F.codimensionBound ∧ F.intersectionTheoryFormula

theorem fulton_conjecture_closed_from_evidence (F : FultonConjecturePackage)
    (E : FultonConjectureEvidence F) : FultonConjectureClosed F := by
  exact And.intro E.chernClassesComputedClosed
    (And.intro E.degeneracyLocusStructureClosed
      (And.intro E.codimensionBoundClosed E.intersectionTheoryFormulaClosed))

end LowCodimensionProblemsAlgebraicGeometryFoundationCanonicalLaneLean
end HautevilleHouse
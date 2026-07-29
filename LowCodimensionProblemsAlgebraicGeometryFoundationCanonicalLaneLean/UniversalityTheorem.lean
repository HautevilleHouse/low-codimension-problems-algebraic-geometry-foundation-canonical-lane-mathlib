import LowCodimensionProblemsAlgebraicGeometryFoundationCanonicalLaneLean.AdmissibleClass

/-!
# Universality Theorem Package
-/

namespace HautevilleHouse
namespace LowCodimensionProblemsAlgebraicGeometryFoundationCanonicalLaneLean

structure UniversalityTheoremPackage where
  universalObject : Type u
  universalProperty : Prop
  mappingProperty : Prop
  uniquenessUpToIsomorphism : Prop

def UniversalityTheoremClosed (U : UniversalityTheoremPackage) : Prop :=
  U.universalProperty ∧ U.mappingProperty ∧ U.uniquenessUpToIsomorphism

theorem universality_theorem_closed (U : UniversalityTheoremPackage) :
    UniversalityTheoremClosed U := by
  exact And.intro U.universalProperty (And.intro U.mappingProperty U.uniquenessUpToIsomorphism)

end LowCodimensionProblemsAlgebraicGeometryFoundationCanonicalLaneLean
end HautevilleHouse
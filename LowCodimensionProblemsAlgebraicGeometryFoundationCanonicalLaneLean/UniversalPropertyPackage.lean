import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowCodimensionProblemsAlgebraicGeometryFoundationCanonicalLaneLean

structure ModuliSpacePackage where
  baseSpace : Type u
  fiberFamily : baseSpace → Type v
  universalFamily : Σ (b : baseSpace), fiberFamily b → Type w
  universalProperty : Prop
  coarseModuli : Prop
  representability : Prop

structure ModuliSpaceEvidence (M : ModuliSpacePackage) where
  universalPropertyClosed : M.universalProperty
  coarseModuliClosed : M.coarseModuli
  representabilityClosed : M.representability

def ModuliSpaceClosed (M : ModuliSpacePackage) : Prop :=
  M.universalProperty ∧ M.coarseModuli ∧ M.representability

theorem moduli_space_closed_from_evidence (M : ModuliSpacePackage) (E : ModuliSpaceEvidence M) :
    ModuliSpaceClosed M := by
  exact And.intro E.universalPropertyClosed (And.intro E.coarseModuliClosed E.representabilityClosed)

end LowCodimensionProblemsAlgebraicGeometryFoundationCanonicalLaneLean
end HautevilleHouse
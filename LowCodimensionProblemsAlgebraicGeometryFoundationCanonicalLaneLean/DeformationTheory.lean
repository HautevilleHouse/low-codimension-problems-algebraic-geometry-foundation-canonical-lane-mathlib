import canonicalLaneMathlib.AdmissibleClass

/-!
# Deformation Theory Package
-/

namespace HautevilleHouse
namespace LowCodimensionProblemsAlgebraicGeometryFoundationCanonicalLaneLean

structure DeformationPackage where
  baseScheme : Type u
  fiberParameter : Type v
  obstructionSpace : Type w
  versalFamilyExists : Prop
  infinitesimalLiftability : Prop
  smoothnessOfTotalSpace : Prop
  uniqueExtensionProperty : Prop

structure DeformationEvidence (D : DeformationPackage) where
  versalFamilyExistsClosed : D.versalFamilyExists
  infinitesimalLiftabilityClosed : D.infinitesimalLiftability
  smoothnessOfTotalSpaceClosed : D.smoothnessOfTotalSpace
  uniqueExtensionPropertyClosed : D.uniqueExtensionProperty

def DeformationClosed (D : DeformationPackage) : Prop :=
  D.versalFamilyExists ∧ D.infinitesimalLiftability ∧
  D.smoothnessOfTotalSpace ∧ D.uniqueExtensionProperty

theorem deformation_closed_from_evidence (D : DeformationPackage)
    (E : DeformationEvidence D) : DeformationClosed D := by
  exact And.intro E.versalFamilyExistsClosed
    (And.intro E.infinitesimalLiftabilityClosed
      (And.intro E.smoothnessOfTotalSpaceClosed E.uniqueExtensionPropertyClosed))

end LowCodimensionProblemsAlgebraicGeometryFoundationCanonicalLaneLean
end HautevilleHouse
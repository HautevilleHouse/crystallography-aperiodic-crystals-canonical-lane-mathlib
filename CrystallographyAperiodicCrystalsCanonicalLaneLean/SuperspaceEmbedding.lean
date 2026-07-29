import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CrystallographyAperiodicCrystalsCanonicalLaneLean.AperiodicCrystalStructures

namespace HautevilleHouse
namespace CrystallographyAperiodicCrystalsCanonicalLaneLean

structure SuperspaceEmbeddingPackage {A : AperiodicCrystalStructure} where
  superspaceDimension : Nat
  latticeInSuperspace : Prop
  modulationVectors : List (Float × Float × Float)
  periodicApproximant : Prop

structure SuperspaceEmbeddingEvidence {A : AperiodicCrystalStructure}
    (S : SuperspaceEmbeddingPackage A) where
  latticeInSuperspaceClosed : S.latticeInSuperspace
  periodicApproximantClosed : S.periodicApproximant

def SuperspaceEmbeddingClosed {A : AperiodicCrystalStructure}
    (S : SuperspaceEmbeddingPackage A) : Prop :=
  S.latticeInSuperspace ∧ S.periodicApproximant

theorem superspace_embedding_closed_from_evidence
    {A : AperiodicCrystalStructure} (S : SuperspaceEmbeddingPackage A)
    (E : SuperspaceEmbeddingEvidence S) : SuperspaceEmbeddingClosed S := by
  exact And.intro E.latticeInSuperspaceClosed E.periodicApproximantClosed

end CrystallographyAperiodicCrystalsCanonicalLaneLean
end HautevilleHouse

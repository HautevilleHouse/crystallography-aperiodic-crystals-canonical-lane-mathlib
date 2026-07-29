import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CrystallographyAperiodicCrystalsCanonicalLaneLean.AperiodicCrystalStructures

namespace HautevilleHouse
namespace CrystallographyAperiodicCrystalsCanonicalLaneLean

structure QuasicrystalClassificationPackage {A : AperiodicCrystalStructure} where
  tilingType : Prop
  inflationSymmetry : Prop
  matchingRules : Prop
  diffractionSignature : Prop

structure QuasicrystalClassificationEvidence {A : AperiodicCrystalStructure}
    (Q : QuasicrystalClassificationPackage A) where
  tilingTypeClosed : Q.tilingType
  inflationSymmetryClosed : Q.inflationSymmetry
  matchingRulesClosed : Q.matchingRules
  diffractionSignatureClosed : Q.diffractionSignature

def QuasicrystalClassificationClosed {A : AperiodicCrystalStructure}
    (Q : QuasicrystalClassificationPackage A) : Prop :=
  Q.tilingType ∧ Q.inflationSymmetry ∧ Q.matchingRules ∧ Q.diffractionSignature

theorem quasicrystal_classification_closed_from_evidence
    {A : AperiodicCrystalStructure} (Q : QuasicrystalClassificationPackage A)
    (E : QuasicrystalClassificationEvidence Q) : QuasicrystalClassificationClosed Q := by
  exact And.intro E.tilingTypeClosed
    (And.intro E.inflationSymmetryClosed
      (And.intro E.matchingRulesClosed E.diffractionSignatureClosed))

end CrystallographyAperiodicCrystalsCanonicalLaneLean
end HautevilleHouse

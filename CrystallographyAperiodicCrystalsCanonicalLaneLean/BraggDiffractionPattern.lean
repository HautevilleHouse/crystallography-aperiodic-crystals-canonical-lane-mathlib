import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyAperiodicCrystalsCanonicalLaneLean

structure BraggDiffractionPatternPackage where
  crystalStructure : Type
  reciprocalLattice : Type
  structureFactor : Type
  diffractionIntensity : Prop
  peakPositions : Prop
  symmetryConstraints : Prop

structure BraggDiffractionPatternEvidence (B : BraggDiffractionPatternPackage) where
  diffractionIntensityClosed : B.diffractionIntensity
  peakPositionsClosed : B.peakPositions
  symmetryConstraintsClosed : B.symmetryConstraints

def BraggDiffractionPatternClosed (B : BraggDiffractionPatternPackage) : Prop :=
  B.diffractionIntensity ∧ B.peakPositions ∧ B.symmetryConstraints

theorem bragg_diffraction_pattern_closed_from_evidence
    (B : BraggDiffractionPatternPackage) (E : BraggDiffractionPatternEvidence B) :
    BraggDiffractionPatternClosed B := by
  exact And.intro E.diffractionIntensityClosed (And.intro E.peakPositionsClosed E.symmetryConstraintsClosed)

end CrystallographyAperiodicCrystalsCanonicalLaneLean
end HautevilleHouse
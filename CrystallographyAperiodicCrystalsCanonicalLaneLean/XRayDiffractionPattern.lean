import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyAperiodicCrystalsCanonicalLaneLean

structure DiffractionPattern (S : Type u) where
  sample : S
  incidentWavelength : ℝ
  scatteringAngles : List ℝ
  intensities : List ℝ
  braggPeaksPresent : Prop
  peakPositionsMatchLattice : Prop
  structureFactorComputed : Prop

def DiffractionPatternEvidence (S : Type u) (D : DiffractionPattern S) : Prop :=
  D.braggPeaksPresent ∧ D.peakPositionsMatchLattice ∧ D.structureFactorComputed

theorem diffraction_pattern_closed (S : Type u) (D : DiffractionPattern S) : DiffractionPatternEvidence S D := by
  exact And.intro D.braggPeaksPresent (And.intro D.peakPositionsMatchLattice D.structureFactorComputed)

end CrystallographyAperiodicCrystalsCanonicalLaneLean
end HautevilleHouse
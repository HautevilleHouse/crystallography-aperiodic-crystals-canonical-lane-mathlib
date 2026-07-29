import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CrystallographyAperiodicCrystalsCanonicalLaneLean.AperiodicCrystalStructures

namespace HautevilleHouse
namespace CrystallographyAperiodicCrystalsCanonicalLaneLean

structure DiffractionPatternAnalysisPackage {A : AperiodicCrystalStructure} where
  reciprocalSpaceMapping : Prop
  peakPositions : List (String × Float)
  intensityDistribution : Prop
  braggPeakCondition : Prop
  diffuseScattering : Prop

structure DiffractionPatternAnalysisEvidence {A : AperiodicCrystalStructure}
    (D : DiffractionPatternAnalysisPackage A) where
  reciprocalSpaceMappingClosed : D.reciprocalSpaceMapping
  intensityDistributionClosed : D.intensityDistribution
  braggPeakConditionClosed : D.braggPeakCondition
  diffuseScatteringClosed : D.diffuseScattering

def DiffractionPatternAnalysisClosed {A : AperiodicCrystalStructure}
    (D : DiffractionPatternAnalysisPackage A) : Prop :=
  D.reciprocalSpaceMapping ∧ D.intensityDistribution ∧ D.braggPeakCondition ∧ D.diffuseScattering

theorem diffraction_pattern_analysis_closed_from_evidence
    {A : AperiodicCrystalStructure} (D : DiffractionPatternAnalysisPackage A)
    (E : DiffractionPatternAnalysisEvidence D) : DiffractionPatternAnalysisClosed D := by
  exact And.intro E.reciprocalSpaceMappingClosed
    (And.intro E.intensityDistributionClosed
      (And.intro E.braggPeakConditionClosed E.diffuseScatteringClosed))

end CrystallographyAperiodicCrystalsCanonicalLaneLean
end HautevilleHouse

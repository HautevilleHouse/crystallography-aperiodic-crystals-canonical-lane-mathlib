import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CrystallographyAperiodicCrystalsCanonicalLaneLean.QuasicrystalClassification

namespace HautevilleHouse
namespace CrystallographyAperiodicCrystalsCanonicalLaneLean

structure TilingDynamicsPackage {A : AperiodicCrystalStructure}
    {Q : QuasicrystalClassificationPackage A} where
  substitutionRule : Prop
  inflationFactor : Float
  mixingProperty : Prop
  minimality : Prop
  uniqueErgodicity : Prop

structure TilingDynamicsEvidence {A : AperiodicCrystalStructure}
    {Q : QuasicrystalClassificationPackage A} (T : TilingDynamicsPackage Q) where
  substitutionRuleClosed : T.substitutionRule
  mixingPropertyClosed : T.mixingProperty
  minimalityClosed : T.minimality
  uniqueErgodicityClosed : T.uniqueErgodicity

def TilingDynamicsClosed {A : AperiodicCrystalStructure}
    {Q : QuasicrystalClassificationPackage A} (T : TilingDynamicsPackage Q) : Prop :=
  T.substitutionRule ∧ T.mixingProperty ∧ T.minimality ∧ T.uniqueErgodicity

theorem tiling_dynamics_closed_from_evidence
    {A : AperiodicCrystalStructure} {Q : QuasicrystalClassificationPackage A}
    (T : TilingDynamicsPackage Q) (E : TilingDynamicsEvidence T) : TilingDynamicsClosed T := by
  exact And.intro E.substitutionRuleClosed
    (And.intro E.mixingPropertyClosed
      (And.intro E.minimalityClosed E.uniqueErgodicityClosed))

end CrystallographyAperiodicCrystalsCanonicalLaneLean
end HautevilleHouse

import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyAperiodicCrystalsCanonicalLaneLean

structure QuasicrystalModel (S : Type u) where
  pointSet : Set S
  diffractionPattern : List ℝ
  aperiodicOrder : Prop
  selfSimilarity : Prop
  inflationSymmetry : Prop
  matchingRules : Prop

def QuasicrystalModelEvidence (S : Type u) (Q : QuasicrystalModel S) : Prop :=
  Q.aperiodicOrder ∧ Q.selfSimilarity ∧ Q.inflationSymmetry ∧ Q.matchingRules

theorem quasicrystal_model_closed (S : Type u) (Q : QuasicrystalModel S) : QuasicrystalModelEvidence S Q := by
  exact And.intro Q.aperiodicOrder (And.intro Q.selfSimilarity (And.intro Q.inflationSymmetry Q.matchingRules))

end CrystallographyAperiodicCrystalsCanonicalLaneLean
end HautevilleHouse
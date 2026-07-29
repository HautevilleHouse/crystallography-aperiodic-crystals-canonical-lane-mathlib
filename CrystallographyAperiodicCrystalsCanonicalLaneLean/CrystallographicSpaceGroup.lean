import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyAperiodicCrystalsCanonicalLaneLean

structure CrystallographicSpaceGroup (G : Type u) where
  spaceGroup : G
  operations : List (G → G)
  closureUnderComposition : Prop
  identityIncluded : Prop
  inversionIncluded : Prop
  associativityHolds : Prop

def CrystallographicSpaceGroupEvidence (G : Type u) (S : CrystallographicSpaceGroup G) : Prop :=
  S.closureUnderComposition ∧ S.identityIncluded ∧ S.inversionIncluded ∧ S.associativityHolds

theorem crystallographic_space_group_closed (G : Type u) (S : CrystallographicSpaceGroup G) : CrystallographicSpaceGroupEvidence G S := by
  refine And.intro S.closureUnderComposition (And.intro S.identityIncluded (And.intro S.inversionIncluded S.associativityHolds))

end CrystallographyAperiodicCrystalsCanonicalLaneLean
end HautevilleHouse
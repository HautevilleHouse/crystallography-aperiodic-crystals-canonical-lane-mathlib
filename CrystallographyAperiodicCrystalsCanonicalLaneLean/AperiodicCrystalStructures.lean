import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyAperiodicCrystalsCanonicalLaneLean

structure AperiodicCrystalStructure where
  pointSet : Type u
  translationVectors : List (pointSet → pointSet)
  rotationalSymmetries : List (pointSet → pointSet)
  aperiodicityCondition : Prop
  diffractionPattern : Type v
  uniqueIndex : Nat

def AperiodicCrystalStructureClosed (A : AperiodicCrystalStructure) : Prop :=
  A.aperiodicityCondition

end CrystallographyAperiodicCrystalsCanonicalLaneLean
end HautevilleHouse

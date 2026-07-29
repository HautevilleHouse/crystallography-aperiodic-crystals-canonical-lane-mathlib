import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyAperiodicCrystalsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CrystallographyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CrystallographyAperiodicCrystalsCanonicalLaneLean
end HautevilleHouse
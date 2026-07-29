import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyAperiodicCrystalsCanonicalLaneLean

structure BravaisLattice (V : Type u) [AddCommGroup V] where
  lattice : AddSubgroup V
  basis : List V
  dimension : Nat
  centeringType : String
  primitiveCellVolume : ℝ

def BravaisLatticeClassification (V : Type u) [AddCommGroup V] (L : BravaisLattice V) : Prop :=
  let n := L.dimension
  n = 1 ∨ n = 2 ∨ n = 3 ∨ n = 4 ∨ n = 5 ∨ n = 6

theorem bravais_lattice_dimension_valid (V : Type u) [AddCommGroup V] (L : BravaisLattice V) (h : BravaisLatticeClassification V L) : L.dimension ≤ 6 := by
  rcases h with (h1|h2|h3|h4|h5|h6)
  · exact by omega
  · exact by omega
  · exact by omega
  · exact by omega
  · exact by omega
  · exact by omega

end CrystallographyAperiodicCrystalsCanonicalLaneLean
end HautevilleHouse
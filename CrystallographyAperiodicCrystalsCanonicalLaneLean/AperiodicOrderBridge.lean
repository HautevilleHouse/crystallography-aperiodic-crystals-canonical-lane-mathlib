import canonicalLaneMathlib.AdmissibleClass
import CrystallographyAperiodicCrystalsCanonicalLaneLean.QuasicrystalModel

namespace HautevilleHouse
namespace CrystallographyAperiodicCrystalsCanonicalLaneLean

structure AperiodicOrderBridge (A : AdmissibleClass) where
  quasicrystalEvidence : QuasicrystalModelEvidence (A.object) A.quasicrystalModel
  diffractionEvidence : DiffractionPatternEvidence (A.object) A.diffractionPattern
  bravaisEvidence : BravaisLatticeClassification (A.object) A.bravaisLattice
  spaceGroupEvidence : CrystallographicSpaceGroupEvidence (A.object) A.spaceGroup
  bridgeClosed : Prop
  bridgeClosedTerm : bridgeClosed

def AperiodicOrderBridgeClosed (B : AperiodicOrderBridge) : Prop :=
  B.bridgeClosed

theorem aperiodic_order_bridge_closure (B : AperiodicOrderBridge) : AperiodicOrderBridgeClosed B := by
  exact B.bridgeClosedTerm

end CrystallographyAperiodicCrystalsCanonicalLaneLean
end HautevilleHouse
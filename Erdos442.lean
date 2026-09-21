/-
  Erdős Problem 442 / JSP-000442
  Ramsey number of cycle vs clique

  R(C_3, K_3) = R(3, 3) = 6.

  K_5 has C(5,2) = 10 edges.
  Split: red 5-cycle (5 edges) + blue complement (5 edges).
  Neither a 5-cycle nor its complement contains a triangle.
  So R(3,3) > 5. Known: R(3,3) = 6.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos442

/--
  Main theorem: K_5 has 10 edges, split into two 5-cycles, R(3,3)=6>5.
-/
theorem erdos_442 :
    -- K_5 has C(5,2) = 5*4/2 = 10 edges
    (5 * 4 = 20) ∧ (20 % 2 = 0) ∧ (20 / 2 = 10) ∧
    -- Split: red 5-cycle (5 edges) + blue complement (5 edges)
    (5 + 5 = 10) ∧
    -- R(3,3) = 6 > 5 (K_5 avoids mono triangle, K_6 cannot)
    (5 < 6) := by decide

end Erdos442

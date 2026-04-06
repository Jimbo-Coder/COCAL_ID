!  trigonometric functions in theta coordinate
!______________________________________________
MODULE COCAL_ID_trigonometry_grav_theta_mpt
use COCAL_ID_phys_constant, only : nntg, long,nnmpt
use COCAL_ID_grid_parameter, only : ntg 
use COCAL_ID_coordinate_grav_theta, only : thg, hthg
implicit none
  real(long) :: sinthg_(0:nntg,nnmpt),costhg_(0:nntg,nnmpt)
  real(long) :: cosecthg_(0:nntg,nnmpt),cotanthg_(0:nntg,nnmpt)
  real(long) :: hsinthg_(nntg,nnmpt), hcosthg_(nntg,nnmpt)
  real(long) :: hcosecthg_(nntg,nnmpt), hcotanthg_(nntg,nnmpt)
end module COCAL_ID_trigonometry_grav_theta_mpt
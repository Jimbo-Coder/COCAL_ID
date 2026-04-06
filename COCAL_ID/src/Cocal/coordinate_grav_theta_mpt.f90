!  theta_coordinate
!______________________________________________
module COCAL_ID_coordinate_grav_theta_mpt
use COCAL_ID_phys_constant,  only : pi, nntg, long, nnmpt
use COCAL_ID_grid_parameter, only : ntg 
implicit none
  Real(long) :: dthg_(nnmpt), dthginv_(nnmpt) 
  Real(long) :: thg_(0:nntg,nnmpt), hthg_(nntg,nnmpt)
end module COCAL_ID_coordinate_grav_theta_mpt
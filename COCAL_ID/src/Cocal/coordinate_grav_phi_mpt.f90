!  phi_coordinate
!______________________________________________
module COCAL_ID_coordinate_grav_phi_mpt
use COCAL_ID_phys_constant,  only : pi, nnpg, long, nnmpt
use COCAL_ID_grid_parameter, only : npg
implicit none
  Real(long) :: dphig_(nnmpt), dphiginv_(nnmpt)  
  Real(long) :: phig_(0:nnpg,nnmpt), hphig_(nnpg,nnmpt)
! Subroutine
end module COCAL_ID_coordinate_grav_phi_mpt
!  trigonometric functions in phi coordinate
!______________________________________________
MODULE COCAL_ID_trigonometry_grav_phi_mpt
use COCAL_ID_phys_constant, only  : nnpg, long, nnmpt
use COCAL_ID_grid_parameter, only : npg, nlg
use COCAL_ID_make_array_2d
implicit none
  real(long) ::  sinphig_(0:nnpg,nnmpt), cosphig_(0:nnpg,nnmpt)
  real(long) :: hsinphig_(nnpg,nnmpt),  hcosphig_(nnpg,nnmpt)
  real(long), pointer :: sinmpg_(:,:,:), cosmpg_(:,:,:)
  real(long), pointer :: hsinmpg_(:,:,:), hcosmpg_(:,:,:)
end module COCAL_ID_trigonometry_grav_phi_mpt
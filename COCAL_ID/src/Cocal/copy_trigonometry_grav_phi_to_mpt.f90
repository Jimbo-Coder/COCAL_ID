!  trigonometric functions in phi coordinate
!______________________________________________
subroutine COCAL_ID_copy_trigonometry_grav_phi_to_mpt(impt)

use COCAL_ID_phys_constant, only : nnpg
use COCAL_ID_grid_parameter, only : npg, nlg
use COCAL_ID_trigonometry_grav_phi
use COCAL_ID_trigonometry_grav_phi_mpt
use COCAL_ID_copy_array_static_1dto2d_mpt
use COCAL_ID_copy_array_2dto3d_mpt
implicit none
  integer :: impt
!
  call copy_arraystatic_1dto2d_mpt(impt, sinphig, sinphig_, 0, nnpg)
  call copy_arraystatic_1dto2d_mpt(impt, cosphig, cosphig_, 0, nnpg)
  call copy_arraystatic_1dto2d_mpt(impt, hsinphig, hsinphig_, 1, nnpg)
  call copy_arraystatic_1dto2d_mpt(impt, hcosphig, hcosphig_, 1, nnpg)
  call copy_array2dto3d_mpt(impt, sinmpg, sinmpg_, 0, nlg, 0, npg)
  call copy_array2dto3d_mpt(impt, cosmpg, cosmpg_, 0, nlg, 0, npg)
  call copy_array2dto3d_mpt(impt, hsinmpg, hsinmpg_, 0, nlg, 1, npg)
  call copy_array2dto3d_mpt(impt, hcosmpg, hcosmpg_, 0, nlg, 1, npg)
!
end subroutine COCAL_ID_copy_trigonometry_grav_phi_to_mpt

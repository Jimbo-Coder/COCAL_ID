! r_coordinate for the field
!______________________________________________
subroutine COCAL_ID_copy_coordinate_grav_r_to_mpt(impt)

use COCAL_ID_phys_constant, only : nnrg
use COCAL_ID_coordinate_grav_r
use COCAL_ID_coordinate_grav_r_mpt
use COCAL_ID_copy_array_static_1dto2d_mpt
implicit none
  integer :: impt
!
  call copy_arraystatic_1dto2d_mpt(impt, rg, rg_, 0, nnrg)
  call copy_arraystatic_1dto2d_mpt(impt, rginv, rginv_, 0, nnrg)
  call copy_arraystatic_1dto2d_mpt(impt, hrg, hrg_, 1, nnrg)
  call copy_arraystatic_1dto2d_mpt(impt, hrginv, hrginv_, 1, nnrg)
  call copy_arraystatic_1dto2d_mpt(impt, drg, drg_, 1, nnrg)
  call copy_arraystatic_1dto2d_mpt(impt, drginv, drginv_, 1, nnrg)
!
end subroutine COCAL_ID_copy_coordinate_grav_r_to_mpt

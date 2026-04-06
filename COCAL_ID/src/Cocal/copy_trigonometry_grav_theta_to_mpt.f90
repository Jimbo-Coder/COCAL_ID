!  trigonometric functions in theta coordinate
!______________________________________________
subroutine COCAL_ID_copy_trigonometry_grav_theta_to_mpt(impt)

use COCAL_ID_phys_constant, only : nntg
use COCAL_ID_trigonometry_grav_theta
use COCAL_ID_trigonometry_grav_theta_mpt
use COCAL_ID_copy_array_static_1dto2d_mpt
implicit none
  integer :: impt
!
  call copy_arraystatic_1dto2d_mpt(impt, sinthg, sinthg_, 0, nntg)
  call copy_arraystatic_1dto2d_mpt(impt, costhg, costhg_, 0, nntg)
  call copy_arraystatic_1dto2d_mpt(impt, cosecthg, cosecthg_, 0, nntg)
  call copy_arraystatic_1dto2d_mpt(impt, cotanthg, cotanthg_, 0, nntg)
  call copy_arraystatic_1dto2d_mpt(impt, hsinthg, hsinthg_, 1, nntg)
  call copy_arraystatic_1dto2d_mpt(impt, hcosthg, hcosthg_, 1, nntg)
  call copy_arraystatic_1dto2d_mpt(impt, hcosecthg, hcosecthg_, 1, nntg)
  call copy_arraystatic_1dto2d_mpt(impt, hcotanthg, hcotanthg_, 1, nntg)
!
end subroutine COCAL_ID_copy_trigonometry_grav_theta_to_mpt

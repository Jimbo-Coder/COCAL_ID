!  trigonometric functions in theta coordinate
!______________________________________________
subroutine COCAL_ID_copy_trigonometry_grav_theta_from_mpt(impt)

use COCAL_ID_phys_constant, only : nntg
use COCAL_ID_trigonometry_grav_theta
use COCAL_ID_trigonometry_grav_theta_mpt
use COCAL_ID_copy_array_static_2dto1d_mpt
implicit none
  integer :: impt
!
  call copy_arraystatic_2dto1d_mpt(impt, sinthg_, sinthg, 0, nntg)
  call copy_arraystatic_2dto1d_mpt(impt, costhg_, costhg, 0, nntg)
  call copy_arraystatic_2dto1d_mpt(impt, cosecthg_, cosecthg, 0, nntg)
  call copy_arraystatic_2dto1d_mpt(impt, cotanthg_, cotanthg, 0, nntg)
  call copy_arraystatic_2dto1d_mpt(impt, hsinthg_, hsinthg, 1, nntg)
  call copy_arraystatic_2dto1d_mpt(impt, hcosthg_, hcosthg, 1, nntg)
  call copy_arraystatic_2dto1d_mpt(impt, hcosecthg_, hcosecthg, 1, nntg)
  call copy_arraystatic_2dto1d_mpt(impt, hcotanthg_, hcotanthg, 1, nntg)
!
end subroutine COCAL_ID_copy_trigonometry_grav_theta_from_mpt

!  theta_coordinate
!______________________________________________
subroutine COCAL_ID_copy_coordinate_grav_theta_from_mpt(impt)

use COCAL_ID_phys_constant, only : nntg
use COCAL_ID_coordinate_grav_theta
use COCAL_ID_coordinate_grav_theta_mpt
use COCAL_ID_copy_array_static_1dto0d_mpt
use COCAL_ID_copy_array_static_2dto1d_mpt
implicit none
  integer :: impt
!
  call copy_arraystatic_1dto0d_mpt(impt, dthg_, dthg)
  call copy_arraystatic_1dto0d_mpt(impt, dthginv_, dthginv)
  call copy_arraystatic_2dto1d_mpt(impt, thg_, thg, 0, nntg)
  call copy_arraystatic_2dto1d_mpt(impt, hthg_, hthg, 1, nntg)
!
end subroutine COCAL_ID_copy_coordinate_grav_theta_from_mpt

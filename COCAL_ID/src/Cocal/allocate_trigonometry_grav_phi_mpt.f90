!  trigonometric functions in phi coordinate
!______________________________________________
subroutine COCAL_ID_allocate_trigonometry_grav_phi_mpt

use COCAL_ID_trigonometry_grav_phi_mpt
use COCAL_ID_grid_parameter, only : npg, nlg
use COCAL_ID_phys_constant, only : nmpt
use COCAL_ID_make_array_3d
implicit none
!
  call alloc_array3d(sinmpg_, 0, nlg, 0, npg, 1, nmpt)
  call alloc_array3d(cosmpg_, 0, nlg, 0, npg, 1, nmpt)
  call alloc_array3d(hsinmpg_, 0, nlg, 1, npg, 1, nmpt)
  call alloc_array3d(hcosmpg_, 0, nlg, 1, npg, 1, nmpt)
!
end subroutine COCAL_ID_allocate_trigonometry_grav_phi_mpt

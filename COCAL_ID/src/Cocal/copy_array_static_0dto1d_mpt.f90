! ----------------------------------------------------------------------
!  Copy array
! ----------------------------------------------------------------------
module COCAL_ID_copy_array_static_0dto1d_mpt
use COCAL_ID_phys_constant, only : long, nnmpt
implicit none
contains
! - - - - -
! 
subroutine copy_arraystatic_0dto1d_mpt(impt, array1, array2)

implicit none
  integer, intent(in)  :: impt
  real(long)           :: array1
  real(long)           :: array2(1:nnmpt)
      array2(impt) &
  & = array1
end subroutine copy_arraystatic_0dto1d_mpt
end module COCAL_ID_copy_array_static_0dto1d_mpt
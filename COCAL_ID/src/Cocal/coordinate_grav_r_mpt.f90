! r_coordinate for the field
!______________________________________________
module COCAL_ID_coordinate_grav_r_mpt
use COCAL_ID_phys_constant, only : nnrg, long, nnmpt
implicit none
  real(long)  :: rg_(0:nnrg,nnmpt), rginv_(0:nnrg,nnmpt) ! radial grid points.
  real(long)  :: hrg_(nnrg,nnmpt), hrginv_(nnrg,nnmpt)   ! mid points.
  real(long)  :: drg_(nnrg,nnmpt), drginv_(nnrg,nnmpt)   ! intervals.
end module COCAL_ID_coordinate_grav_r_mpt
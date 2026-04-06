subroutine COCAL_ID_interpolation_metric(fnc,fncca)

use COCAL_ID_phys_constant, only : long
use grid_parameter_cartesian, only : nx, ny, nz

use coordinate_grav_xyz, only : x, y, z

use COCAL_ID_interface_modules_cartesian, ignore_me => COCAL_ID_interpolation_metric
implicit none
  real(long), pointer :: fnc(:,:,:)
  real(long), pointer :: fncca(:,:,:)
  real(long) :: xc, yc, zc, cfn
  integer :: ix, iy, iz
!
  do iz = 1, nz
    zc = z(iz)
    do iy = 1, ny
      yc = y(iy)
      do ix = 1, nx
        xc = x(ix)
        call COCAL_ID_interpo_gr2cgr_4th(fnc,cfn,xc,yc,zc)
        fncca(ix,iy,iz) = cfn
      end do
    end do
  end do
end subroutine COCAL_ID_interpolation_metric

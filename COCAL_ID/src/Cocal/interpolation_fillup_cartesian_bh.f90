subroutine COCAL_ID_interpolation_fillup_cartesian_bh(fnc,fncca)

use COCAL_ID_phys_constant, only : long
use grid_parameter_cartesian, only : nx, ny, nz

use COCAL_ID_grid_parameter_binary_excision, only : ex_rgmid, ex_radius 
use coordinate_grav_xyz, only : x, y, z

use COCAL_ID_interface_modules_cartesian
use COCAL_ID_grid_parameter, only : rgin
implicit none
  real(long), pointer :: fnc(:,:,:)
  real(long), pointer :: fncca(:,:,:)
  real(long) :: xc, yc, zc, cfn, R
  integer :: ix, iy, iz
  real(long) :: r1,r2
!
  do iz = 1, nz
    zc = z(iz)
    do iy = 1, ny
      yc = y(iy)
      do ix = 1, nx
        xc = x(ix)
        r1 = sqrt(xc**2 + yc**2 + zc**2)
        r2 = sqrt((xc-ex_rgmid)**2 + yc**2 + zc**2)
        if((r1.ge.rgin).and.(r2.ge.rgin)) then
          call COCAL_ID_interpo_gr2cgr_4th(fnc,cfn,xc,yc,zc)
          fncca(ix,iy,iz) = cfn
        else
          fncca(ix,iy,iz) = 0.0d0
        endif
      end do
    end do
  end do
!
  do iz = 1, nz
    zc = z(iz)
    do iy = 1, ny
      yc = y(iy)
      do ix = 1, nx
        xc = x(ix)
        R = sqrt((xc-ex_rgmid)**2 + yc**2 + zc**2)
        if (R <= ex_radius*1.2d0) then
          call COCAL_ID_interpo_gr2cgr_4th(fnc,cfn,-xc+ex_rgmid,-yc,zc)
          fncca(ix,iy,iz) = cfn
        endif
      end do
    end do
  end do
end subroutine COCAL_ID_interpolation_fillup_cartesian_bh

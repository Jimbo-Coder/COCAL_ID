subroutine COCAL_ID_interpolation_fillup_cartesian_parity_BNS_mpt(fnc, fncca, impt, impt_ex, par)

use COCAL_ID_phys_constant, only : long
use COCAL_ID_grid_parameter, only : nrg, ntg, npg, nrf, ntf, npf
use grid_parameter_cartesian, only : nx, ny, nz

use COCAL_ID_grid_parameter_binary_excision, only : ex_rgmid, ex_radius 
use coordinate_grav_xyz, only : x, y, z

use COCAL_ID_def_binary_parameter, only : dis
use COCAL_ID_interface_modules_cartesian, ignore_me => COCAL_ID_interpolation_fillup_cartesian_parity_BNS_mpt
use COCAL_ID_make_array_3d
implicit none
  real(long), pointer :: fnc(:,:,:)
  real(long), pointer :: fncca(:,:,:)
  real(long) :: xc, yc, zc, cfn, R, par
  integer :: ix, iy, iz, impt, impt_ex
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
!
  call copy_from_mpatch_interpolation_utility(impt_ex)
!  call copy_def_metric_and_matter_from_mpt(impt_ex)    ! vep is not inside
  call copy_def_metric_from_mpt(impt_ex)  
  do iz = 1, nz
    zc = z(iz)
    do iy = 1, ny
      yc = y(iy)
      do ix = 1, nx
        xc = x(ix)
        R = sqrt((xc-ex_rgmid)**2+ yc**2 + zc**2)
        if (R <= ex_radius*1.45d0.and.xc >= dis) then
          call COCAL_ID_interpo_gr2cgr_4th(fnc,cfn,-xc+ex_rgmid,-yc,zc)
          fncca(ix,iy,iz) = cfn*par
        endif
      end do
    end do
  end do
  call copy_from_mpatch_interpolation_utility(impt)
!  call copy_def_metric_and_matter_from_mpt(impt)
  call copy_def_metric_from_mpt(impt)
!
end subroutine COCAL_ID_interpolation_fillup_cartesian_parity_BNS_mpt

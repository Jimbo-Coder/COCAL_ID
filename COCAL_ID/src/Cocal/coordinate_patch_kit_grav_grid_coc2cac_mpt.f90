subroutine COCAL_ID_coordinate_patch_kit_grav_grid_coc2cac_mpt(igrid)

use COCAL_ID_grid_parameter
use COCAL_ID_coordinate_grav_r
use COCAL_ID_coordinate_grav_phi
use COCAL_ID_coordinate_grav_theta
use COCAL_ID_coordinate_grav_extended!
!  use weight_midpoint_grav
!  use weight_midpoint_fluid

use COCAL_ID_trigonometry_grav_theta
use COCAL_ID_trigonometry_grav_phi
implicit none
  integer :: igrid
! call subroutines. the order is important.
  if (igrid==1) then
    write(6,*) "Default grid..."
    call grid_r
  else if (igrid==2) then
    write(6,*) "Black hole grid..."
    call grid_r_bhex('eBH')
  else if (igrid==3) then
    write(6,*) "Neutron star grid with rg(nrf)<1..."
    call grid_r_bns
  else if (igrid==4) then
    write(6,*) "***Neutron star grid with rg(nrf)=1 and constant dr until r~5 ****"
    !call grid_r_bns_const
    call grid_r_bqs
    !ex_nrg  = nrgin - ex_ndis
    !write(6,*) "@@@@@ TRUE ex_nrg, ex_ndis, nrgin = ", ex_nrg, ex_ndis, nrgin 
  else
    write(6,*) "Choose a grid: 1 or 2 or 3 or 4...exiting"
    stop
  end if

  call grid_theta
  call trig_grav_theta
  call grid_phi
  call trig_grav_phi
!  call weight_calc_midpoint_grav
!  call weight_calc_midpoint_grav_th4th
!  call weight_calc_midpoint_fluid
  call grid_extended
end subroutine COCAL_ID_coordinate_patch_kit_grav_grid_coc2cac_mpt

module COCAL_ID_interface_modules_cartesian
use COCAL_ID_phys_constant, only : long
implicit none
  interface 
!______________________________________________________________________
  
subroutine COCAL_ID_interpo_fl2cgr_4th(fnc,cfn,xc,yc,zc)
      real(8), pointer     :: fnc(:,:,:)
      real(8), intent(out) :: cfn
      real(8) ::  xc, yc, zc
  
end subroutine COCAL_ID_interpo_fl2cgr_4th

  
subroutine COCAL_ID_interpo_fl2cgr_4th_export(fnc,cfn,xc,yc,zc,rs)
      real(8), pointer     :: fnc(:,:,:), rs(:,:)
      real(8), intent(out) :: cfn
      real(8) ::  xc, yc, zc
  
end subroutine COCAL_ID_interpo_fl2cgr_4th_export

  
subroutine COCAL_ID_interpo_gr2cgr_4th(fnc,cfn,xc,yc,zc)
      real(8), pointer     :: fnc(:,:,:)
      real(8), intent(out) :: cfn
      real(8) ::  xc, yc, zc
  
end subroutine COCAL_ID_interpo_gr2cgr_4th
  
subroutine COCAL_ID_interpolation_matter(fnc,fncca)
      real(8), pointer :: fnc(:,:,:)
      real(8), pointer :: fncca(:,:,:)
  
end subroutine COCAL_ID_interpolation_matter
  
subroutine COCAL_ID_interpolation_metric(fnc,fncca)
      real(8), pointer :: fnc(:,:,:)
      real(8), pointer :: fncca(:,:,:)
  
end subroutine COCAL_ID_interpolation_metric
  
subroutine interpolation_metric_bh(fnc,fncca)
      real(8), pointer :: fnc(:,:,:)
      real(8), pointer :: fncca(:,:,:)
  
end subroutine interpolation_metric_bh
  
subroutine COCAL_ID_interpolation_fillup_cartesian(fnc,fncca)
      real(8), pointer :: fnc(:,:,:)
      real(8), pointer :: fncca(:,:,:)
  
end subroutine COCAL_ID_interpolation_fillup_cartesian
  
subroutine COCAL_ID_interpolation_fillup_cartesian_bh(fnc,fncca)
      real(8), pointer :: fnc(:,:,:)
      real(8), pointer :: fncca(:,:,:)
  
end subroutine COCAL_ID_interpolation_fillup_cartesian_bh
  
subroutine COCAL_ID_interpolation_fillup_cartesian_bh_parity(fnc,fncca,par)
      real(8), pointer :: fnc(:,:,:)
      real(8), pointer :: fncca(:,:,:)
      real(8) :: par
  
end subroutine COCAL_ID_interpolation_fillup_cartesian_bh_parity
  
subroutine COCAL_ID_interpolation_fillup_cartesian_parity(fnc,fncca,par)
      real(8), pointer :: fnc(:,:,:)
      real(8), pointer :: fncca(:,:,:)
      real(8) :: par
  
end subroutine COCAL_ID_interpolation_fillup_cartesian_parity
  
subroutine COCAL_ID_interpolation_fillup_cartesian_mpt(fnc,fncca,impt,impt_ex)
      real(8), pointer :: fnc(:,:,:)
      real(8), pointer :: fncca(:,:,:)
      integer :: impt, impt_ex
  
end subroutine COCAL_ID_interpolation_fillup_cartesian_mpt
  
subroutine COCAL_ID_interpolation_fillup_cartesian_parity_BNS_mpt(fnc,fncca,impt,impt_ex,par)
      real(8), pointer :: fnc(:,:,:)
      real(8), pointer :: fncca(:,:,:)
      integer :: impt, impt_ex
      real(8) :: par
  
end subroutine COCAL_ID_interpolation_fillup_cartesian_parity_BNS_mpt
!______________________________________________________________________
  end interface
end module COCAL_ID_interface_modules_cartesian
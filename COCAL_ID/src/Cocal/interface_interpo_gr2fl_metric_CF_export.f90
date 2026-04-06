module COCAL_ID_interface_interpo_gr2fl_metric_CF_export
implicit none
  interface 
  
subroutine COCAL_ID_interpo_gr2fl_metric_CF_export(alph,psi,bvxd,bvyd,bvzd,alphf,psif,bvxdf,bvydf,bvzdf,rs)
      real(8), pointer :: psi(:,:,:), alph(:,:,:), bvxd(:,:,:), bvyd(:,:,:), bvzd(:,:,:)
      real(8), pointer :: psif(:,:,:), alphf(:,:,:), bvxdf(:,:,:), bvydf(:,:,:), bvzdf(:,:,:), rs(:,:)
  
end subroutine COCAL_ID_interpo_gr2fl_metric_CF_export
  end interface
end module COCAL_ID_interface_interpo_gr2fl_metric_CF_export
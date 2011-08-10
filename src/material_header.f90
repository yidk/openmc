module material_header

  implicit none

!===============================================================================
! MATERIAL describes a material by its constituent isotopes
!===============================================================================

  type Material
     integer :: uid
     integer :: n_nuclides
     character(10), allocatable :: names(:)  ! isotope names
     integer, allocatable :: xsdata(:)       ! index in xsdata list
     integer, allocatable :: nuclide(:)      ! index in nuclides array
     real(8)              :: atom_density    ! total atom density in atom/b-cm
     real(8), allocatable :: atom_percent(:)
     real(8), allocatable :: total_xs(:)     ! macroscopic cross-section
     integer :: sab_table
  end type Material

end module material_header
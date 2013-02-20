module fortran_test

  use iso_c_binding, only: c_double, c_int
  implicit none

contains

  subroutine fortran_fun(N, outvec) bind(c)
    integer(c_int), intent(in) :: N
    real(c_double), intent(inout) :: outvec(N)
    integer i
    outvec=[ (i, i = 1, N) ]
  end subroutine fortran_fun
end module fortran_test

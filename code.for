program main
	implicit none
	integer, parameter              :: rp=8
	real(rp),parameter              :: tolerance=1e-15
	real(rp)                        :: a=2._rp, b=0._rp, c=0._rp
	real(rp)                        :: Denominator
	! Division by zero
	c = a/Denominator(b,tolerance)
    print*,'The values of the operation is: ',c
end program main

function Denominator(                                           &
	! Value of the denominator of the division
    value,                                                      &
  ! Tolerance to avoid the division by 0
    tolerance)                                                  &
	! Maximum value between the value or the division tolerance
	result(value_out)
  !
	implicit none
	integer, parameter              :: rp=8
	! Inputs
	real(rp),intent(in)             :: value,tolerance
	!
	! Output
	real(rp)                        :: value_out
	!
	! Calculus of the function
	!
	value_out = sign(max(abs(value),tolerance) , value)
	!
	return
end function Denominator

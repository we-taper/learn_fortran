program program_name
    implicit none
! This is a comment
    real :: out
    real :: funcAdd
    real, dimension(3,3) :: array

    out = funcAdd(13.1)
    print *,  out
    call readSimple()
    print *, 'reading matrix...'
    open(unit=213, file='test_input_matrix')
        read(213, *) array
    call printMatrix(array, 3, 3)
end program program_name

real function funcAdd(param)
    real :: param
    funcAdd = param + 1.5
end

subroutine readSimple()
    print *, 'reading...'
    open(unit=10001, file='test_input')
        read(10001, *) abc, def
        print *,  abc, 'def', def
        read(10001, *) abc
        print *,  abc
        read(10001, *) abc
        print *,  abc
        read(10001, *) abc
        print *,  abc
        read(10001, *) abc
        print *,  abc
end


subroutine printMatrix(array3, n, m)
    implicit none
    real, intent(in) :: array3(n,m)
    integer, intent(in) :: n,m
    integer :: i
    do i = 1,n
    print*, array3(i,:)
    end do
end
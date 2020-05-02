program program_name
    implicit none
! This is a comment
    real :: out
    real :: funcAdd

    out = funcAdd(1.0)
    print *,  out
end program program_name

real function funcAdd(param)
    real :: param
    funcAdd = param + 1.5
end
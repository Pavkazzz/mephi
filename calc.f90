program calc
    integer :: i, j
    character :: znak
    print *, "Vvedite 2 chisla i znak"
    read *, i
    read *, j
    read *, znak

    select case (znak)
        case ('+')
            print *, "i+j=", i+j
        case ('-')
            print *, "i-j=", i-j
        case ('*')
            print *, "i*j=", i*j
        case ('/')
            print *, "i/j=", i/j
        case ('^')
            print *, "i^j=", i**j
        case default
            print *, 'nekorectniy znak'
    end select

end

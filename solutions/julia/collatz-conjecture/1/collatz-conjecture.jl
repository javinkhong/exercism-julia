function collatz_steps(n)
    if n < 1
        throw(DomainError(n))
    end
    step = 0
    while n > 1
        n = iseven(n) ? n ÷ 2 : 3n + 1
        step += 1
    end
    return step
end

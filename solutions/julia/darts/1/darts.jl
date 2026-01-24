function score(x, y)
    r = x^2 + y^2
    if r > 10^2
        return 0
    elseif 5^2 < r <= 10^2
        return 1
    elseif 1 < r <= 5^2
        return 5
    else
        return 10
    end
end
